#ifndef APPENUM_H
#define APPENUM_H
#include <QObject>
class AppEnum : public QObject
{
    Q_OBJECT
    Q_ENUMS(Screen)
public:
    enum Screen{
        INDEX_SCREEN_MANAGE_TEMPERATURE_DAY,
        INDEX_SCREEN_MANAGE_TEMPERATURE_NIGHT,
        INDEX_SCREEN_MANAGE_CALENDAR_DAY,
        INDEX_SCREEN_MANAGE_CALENDAR_NIGHT
    };
};

class AppEnumCalendarWeek : public QObject
{
    Q_OBJECT
    Q_ENUMS(Week)
public:

    enum Week{
        INDEX_CALENDAR_WEEK_MO,
        INDEX_CALENDAR_WEEK_TU,
        INDEX_CALENDAR_WEEK_WE,
        INDEX_CALENDAR_WEEK_TH,
        INDEX_CALENDAR_WEEK_FR,
        INDEX_CALENDAR_WEEK_SA,
        INDEX_CALENDAR_WEEK_SU
    };

};

class WeatherEnum: public QObject
{
    Q_OBJECT
    Q_ENUMS(Weather)
public:

    enum Weather{
        INDEX_WEATHER_01D,
        INDEX_WEATHER_02D,
        INDEX_WEATHER_03D,
        INDEX_WEATHER_04D,
        INDEX_WEATHER_09D,
        INDEX_WEATHER_10D,
        INDEX_WEATHER_11D,
        INDEX_WEATHER_13D,
        INDEX_WEATHER_50D,
        INDEX_WEATHER_01N,
        INDEX_WEATHER_02N,
        INDEX_WEATHER_03N,
        INDEX_WEATHER_04N,
        INDEX_WEATHER_09N,
        INDEX_WEATHER_10N,
        INDEX_WEATHER_11N,
        INDEX_WEATHER_13N,
        INDEX_WEATHER_50N,
    };
};
#endif // APPENUM_H
