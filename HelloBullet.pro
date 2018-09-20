# This specifies the exe name
TARGET=HelloBullet
# where to put the .o files
OBJECTS_DIR=obj
# core Qt Libs to use add more here if needed.
QT+=gui opengl core

cache()

QMAKE_CXXFLAGS+=$$system(pkg-config --cflags bullet)
LIBS+= $$system(pkg-config --libs bullet) 
# where to put moc auto generated files
MOC_DIR=moc
# on a mac we don't create a .app bundle file ( for ease of multiplatform use)
CONFIG-=app_bundle
# Auto include all .cpp files in the project src directory (can specifiy individually if required)
SOURCES+= $$PWD/main.cpp
# where our exe is going to live (root of project)
DESTDIR=./

# were are going to default to a console app
CONFIG += console
