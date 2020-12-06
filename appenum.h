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
#endif // APPENUM_H
