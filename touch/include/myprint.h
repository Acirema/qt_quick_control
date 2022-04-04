#ifndef MYPRINT_H
#define MYPRINT_H

#include <QObject>
#include <stdio.h>

class MyPrint : public QObject{
   Q_OBJECT
public:
   explicit MyPrint (QObject* parent = 0) : QObject(parent) {}

   Q_INVOKABLE void print(int value){
       printf("value: %d \n",value);
   }
};

#endif // MYPRINT_H
