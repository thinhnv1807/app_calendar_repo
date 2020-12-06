#include "screenmanage.h"

ScreenManage::ScreenManage(QObject *parent) : QObject(parent)
{
        m_screen_index = AppEnum::INDEX_SCREEN_MANAGE_TEMPERATURE_DAY;
}

int ScreenManage::get_screen_index()
{
    return m_screen_index;
}

void ScreenManage::set_screen_index(int data)
{
    if(data != m_screen_index){m_screen_index = data; emit screen_index_changed();}
}

int ScreenManage::get_screen_event_index()
{
    return  m_screen_event_index;
}

void ScreenManage::set_screen_event_index(int data)
{
    if(data != m_screen_event_index){m_screen_event_index = data; emit screen_index_changed();}
}




