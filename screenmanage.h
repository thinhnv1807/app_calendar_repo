#ifndef SCREENMANAGE_H
#define SCREENMANAGE_H

#include <QObject>
#include <appenum.h>

class ScreenManage : public QObject
{
    Q_OBJECT
    Q_PROPERTY( int screen_index READ get_screen_index WRITE set_screen_index NOTIFY screen_index_changed)
    Q_PROPERTY( int screen_event_index READ get_screen_event_index WRITE set_screen_event_index NOTIFY screen_index_event_changed)

public:
    explicit ScreenManage(QObject *parent = nullptr);
    int  get_screen_index();
    void set_screen_index(int data);
    int  get_screen_event_index();
    void set_screen_event_index(int data);
private:
    int     m_screen_index;
    int     m_screen_event_index;
    QString m_screen_source;
signals:
    void screen_index_changed();
    void screen_index_event_changed();
};

#endif // SCREENMANAGE_H
