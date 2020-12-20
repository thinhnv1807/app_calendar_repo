#ifndef APPSOURCE_H
#define APPSOURCE_H
#include <QObject>
#include <QString>

class AppSource : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString img_clould_icon READ img_clould_icon          )
    Q_PROPERTY(QString img_cluold_big_icon READ img_cluold_big_icon  )
    Q_PROPERTY(QString img_moon_icon READ img_moon_icon              )

    Q_PROPERTY(QString img_rain_icon READ img_rain_icon              )
    Q_PROPERTY(QString img_sun_icon READ img_sun_icon                )
    Q_PROPERTY(QString img_thunder_icon READ img_thunder_icon        )
    Q_PROPERTY(QString img_mist_icon READ img_mist_icon              )



public:
    Q_INVOKABLE QString img_scr_day()               {return "qrc:/image_app/img_scr_day.png"              ;}
    Q_INVOKABLE QString img_scr_day_temperature()   {return "qrc:/image_app/img_scr_day_temperature.png"  ;}
    Q_INVOKABLE QString img_scr_night()             {return "qrc:/image_app/img_scr_night.png"            ;}
    Q_INVOKABLE QString img_scr_night_temperature() {return "qrc:/image_app/img_scr_night_temperature.png";}
    Q_INVOKABLE QString img_bgr_app_day()           {return "qrc:/image_app/img_bgr_app_day.png";}
    Q_INVOKABLE QString img_logo()                  {return "qrc:/image_app/logo.png";}
     QString img_clould_icon()           {return "qrc:/image_app/icon/clould_icon.png";}
     QString img_cluold_big_icon()       {return "qrc:/image_app/icon/cluold_big_icon.png";}
     QString img_moon_icon()             {return "qrc:/image_app/icon/moon_icon.png";}
     QString img_rain_icon()             {return "qrc:/image_app/icon/rain_icon.png";}
     QString img_sun_icon()              {return "qrc:/image_app/icon/sun_icon.png";}
     QString img_thunder_icon()          {return "qrc:/image_app/icon/thunder_icon.png";}
     QString img_mist_icon()             {return "qrc:/image_app/icon/mist_icon.png";}











};

#endif // APPSOURCE_H
