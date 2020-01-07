from flask import Flask , jsonify, render_template
from flask_sqlalchemy import SQLAlchemy
from flask import request

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:////tmp/test1.db'
db = SQLAlchemy(app)

class student(db.Model):
    # id = db.Column(db.Integer,primary_key=True, auto_increment=True)
    rollno = db.Column(db.Integer, primary_key=True, unique=True, nullable=False)
    name = db.Column(db.String(80), unique=True, nullable=False)
    email = db.Column(db.String(120), unique=True, nullable=False)

    def __init__(self, name, email, rollno):
        self.rollno = rollno
        self.name = name
        self.email = email

@app.route('/students/create',methods=["GET","POST"])
def stdcreate():
    if request.method == "POST":
        rollno = request.form['rollno']
        email = request.form['email']
        name = request.form['name']
        db.create_all()
        new_stud = student(name, email, rollno)
        db.session.add(new_stud)
        db.session.commit()
        temp={}
        temp['status']=(type(new_stud)==student)
        return jsonify(temp)
    elif request.method == "GET":
        stud=student.query.all()
        temp={}
        for std in stud:
            # if std.rollno == request.form['rollno']:
            temp['name']=std.name
            temp['rollno']=std.rollno
            temp['email']=std.email
        return jsonify(temp)

@app.route('/students',methods=["GET"])
def showall():
    if request.method=="GET":
        stud=student.query.all()
        temp2={}
        temp2['students']=[]
        temp={}
        # print(stud)
        for std in stud:
            temp={}
            temp['name']=std.name
            temp['rollno']=std.rollno
            temp['email']=std.email
            temp2['students'].append(temp)
            # std++
        return jsonify(temp2)

if __name__ == '__main__':
    app.run(debug = True)
