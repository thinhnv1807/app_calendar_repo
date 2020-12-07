#ifndef APPSOURCE_H
#define APPSOURCE_H
#include <QObject>
#include <QString>

class AppSource : public QObject
{
    Q_OBJECT
public:
    Q_INVOKABLE QString img_scr_day()               {return "qrc:/image_app/img_scr_day.png"              ;}
    Q_INVOKABLE QString img_scr_day_temperature()   {return "qrc:/image_app/img_scr_day_temperature.png"  ;}
    Q_INVOKABLE QString img_scr_night()             {return "qrc:/image_app/img_scr_night.png"            ;}
    Q_INVOKABLE QString img_scr_night_temperature() {return "qrc:/image_app/img_scr_night_temperature.png";}
    Q_INVOKABLE QString img_bgr_app_day()           {return "qrc:/image_app/img_bgr_app_day.png";}

};

#endif // APPSOURCE_H
