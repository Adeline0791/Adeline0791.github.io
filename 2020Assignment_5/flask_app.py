############# Flask Modules Setup ##############

from flask import Flask, render_template, url_for, redirect, request, make_response, Response, jsonify
from flask_login import LoginManager, login_user, current_user, logout_user, login_required, UserMixin
from flask_cors import CORS
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime
import requests
import jwt

############ Initialize Flask App ##############

app = Flask(__name__)
CORS(app)

#### MySQL SQLAlchemy Object Relations Mapping #####

app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://AdelineAAA:74129ACp@AdelineAAA.mysql.pythonanywhere-services.com/AdelineAAA$Activities'
app.config['SECRET_KEY'] = "mysecret"
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

class Activities(db.Model):
    __tablename__ = 'activities'
    id = db.Column(db.Integer, primary_key=True)
    Name = db.Column(db.String(24))
    City = db.Column(db.String(14))
    StartDate = db.Column(db.String(10))
    EndDate = db.Column(db.String(10))
    Location = db.Column(db.String(55))
    Budget = db.Column(db.String(6))
    Picture = db.Column(db.String(94))
    # description = db.Column(db.Text)

############## Login Manager Setup ###############

login_manager = LoginManager()
login_manager.init_app(app)
login_manager.login_view = 'login'
app.config['SECRET_KEY'] = "lkkajdghdadkglajkgah"


@login_manager.user_loader
def load_user(user_id):
    return User(user_id)

class User(UserMixin):
  def __init__(self,id):
    self.id = id

############ Web Page Routes Setup ###############

@app.route("/")
def home():
    return render_template('home.html')

@app.route("/login")
def login():
    if current_user.is_authenticated:
        return redirect(url_for("list_album"))
    message = 'Please login in first.'
    return render_template('login.html', message=message)

@app.route("/form_auth",methods=['POST'])
def form_auth():
    username = request.form['email']
    password = request.form['pwd']
    if username == "hihihi@gmail.com" and password == "oops":
        login_user(User(1))
        # message = "Dear " + username + ", your login has been granted. Enjoy your visit here!"
        return redirect(url_for("list_album"))
    else:
        message = 'Wrong password! Please check again'
        return render_template('login.html',message=message)

@app.route("/list_album2")
@login_required
def list_album():
    dataset = []
    activity_list = Activities.query.all()
    for activity in activity_list:
        dataset.append({'id': activity.id,'Name': activity.Name, 'City': activity.City, 'Start Date': activity.StartDate,
                       'End Date': activity.EndDate, 'Location':activity.Location,'Budget': activity.Budget, 'Picture': activity.Picture})
    return render_template('list_album2.html', entries=dataset)

@app.route('/album')
def album():
    page_num = 1
    activities = Activities.query.paginate(per_page=9, page=page_num, error_out=True)
    return render_template('product_paging.html', activities=activities)

@app.route('/album/<int:page_num>')
def album_paging(page_num):
    activities = Activities.query.paginate(per_page=3, page=page_num, error_out=True)
    return render_template('product_paging.html', activities=activities)

@app.route("/add_product",methods=['POST'])
@login_required
def add_product():
    id = request.form['id']
    Name = request.form['Name']
    City = request.form['City']
    StartDate = request.form['StartDate']
    EndDate = request.form['EndDate']
    Location = request.form['Location']
    Budget = request.form['Budget']
    activity = Activities(id=id,Name=Name,City=City,StartDate=StartDate,EndDate=EndDate,Location=Location,Budget=Budget)
    db.session.add(activity)
    db.session.commit()
    dataset = []
    activity_list = Activities.query.all()
    for activity in activity_list:
        dataset.append({'id': activity.id,'Name': activity.Name, 'City': activity.City, 'Start Date': activity.StartDate,
                       'End Date': activity.EndDate, 'Location':activity.Location,'Budget': activity.Budget, 'Picture': activity.Picture})
    return render_template('list_album2.html', entries=dataset)

@app.route("/update_product",methods=['POST','PUT'])
@login_required
def update_product():
    record_id = request.form['record_id']
    activities = Activities.query.filter_by(id=record_id).first()
    activities.Name = request.form['Name']
    activities.City = request.form['City']
    activities.StartDate = request.form['StartDate']
    activities.EndDate = float(request.form['EndDate'])
    activities.Location = request.form['Location']
    activities.Budget = request.form['Budget']
    db.session.commit()
    dataset = []
    activities_list = Activities.query.all()
    for activity in activity_list:
        dataset.append({'id': activity.id,'Name': activity.Name, 'City': activity.City, 'Start Date': activity.StartDate,
                       'End Date': activity.EndDate, 'Location':activity.Location,'Budget': activity.Budget, 'Picture': activity.Picture})
    return render_template('list_album2.html', entries=dataset)

@app.route("/delete_product",methods=['POST','DELETE'])
@login_required
def delete_product():
    record_id = request.form['record_id']
    activity = Activities.query.filter_by(id=record_id).first()
    db.session.delete(activities)
    db.session.commit()
    dataset = []
    activity_list = Activities.query.all()
    for activity in activity_list:
        dataset.append({'id': activity.id,'Name': activity.Name, 'City': activity.City, 'Start Date': activity.StartDate,
                       'End Date': activity.EndDate, 'Location':activity.Location,'Budget': activity.Budget, 'Picture': activity.Picture})
    return render_template('list_album2.html', entries=dataset)

@app.route('/api')
def api():
    result = db.engine.execute('select * from activities')
    final_result = [list(i) for i in result]
    dataset=[]
    dict={}
    for i in final_result:
        dict['id'] = i[0]
        dict['Name'] = i[1]
        dict['City'] = i[2]
        dict['StartDate'] = i[3]
        dict['EndDate'] = i[4]
        dict['Location'] = i[5]
        dict['Budget'] = i[6]
        # print(i)
        # print(dict)
        dataset.append(dict.copy()) #markers.append(fld.copy())
    return jsonify({'Album': dataset})

@app.route('/logout/')
@login_required
def logout():
    logout_user()
    message = 'Thanks for logging out.'
    return render_template('login.html',message=message)

@app.errorhandler(500)
def internal_error(error):
    message = 'Wrong password! Please check it again.'
    return render_template('login.html',message=message),500

######### API Endpoints ##########


######### Run Flask Web App at Port 9030 ##########

if __name__ == '__main__':
    from werkzeug.serving import run_simple
    run_simple('localhost', 9030, app)