
class Person {
    protected:
        string name;
        int age;
        static int id;

    public:
        Person() {
            id++;
        }
        virtual void getdata() { 
        }
        virtual void putdata() { 
        }
};
    
class Professor: public Person {

    protected:
        int publications;

    public:
        Professor() {

        }
        void getdata() { 
            cin >> name;
            cin >> publications;
            cin >> id;
        }
        void putdata() { 
            cout << name << " " << age  << " " << publications << " "  << id << endl;
        }
};

class Student: public Person {
  public:
    Student() {
        
    }
    void getdata() { 
        cin >> name;
    }
    void putdata() { 
    //If the object is of the Student class, print the space separated name, age, the sum of the marks in  subjects and id on a new line.

        
    }
};
        
