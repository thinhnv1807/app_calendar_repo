#ifndef CALENDARMODEL_H
#define CALENDARMODEL_H

#include <QObject>

class CalendarModel : public QObject
{
    Q_OBJECT
public:
    explicit CalendarModel(QObject *parent = nullptr);

signals:

};

#endif // CALENDARMODEL_H
