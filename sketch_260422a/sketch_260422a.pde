int [] StudentMarks = {80, 30, 50, 40, 89};

void setup(){
  int sum = 0;
   for(int i=0; i<StudentMarks.length; i++){
     sum = sum + StudentMarks[i];
 } 
 println("Sum of Array is - " + sum);
}
