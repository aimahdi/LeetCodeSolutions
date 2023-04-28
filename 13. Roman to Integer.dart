class Solution {
  int romanToInt(String textNumber) {
  int returnedNumber = 0;
  
  int length = textNumber.length;
  
  int numberOne, numberTwo, combinedNumber;

  for (int i = 0; i < length; i++) {
    numberOne = getIntValueForChar(textNumber[i]);
 
    
    if(i < length - 1){
    numberTwo = getIntValueForChar(textNumber[i+1]);
   
    
    if(numberOne < numberTwo){
      combinedNumber = numberTwo - numberOne;
   
      i++;
      
      returnedNumber += combinedNumber;
      
  
    }else{
      returnedNumber+= numberOne;
    }
     
    }else{
      returnedNumber+= numberOne;
    }
    
 
    

    
  }

  return returnedNumber;
}

int getIntValueForChar(String c) {
  if (c == 'I') {
    return 1;
  } else if (c == 'V') {
    return 5;
  } else if (c == 'X') {
    return 10;
  } else if (c == 'L') {
    return 50;
  } else if (c == 'C') {
    return 100;
  } else if (c == 'D') {
    return 500;
  } else if (c == 'M') {
    return 1000;
  }
  return 1;
}
}
