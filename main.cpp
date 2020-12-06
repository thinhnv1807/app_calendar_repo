#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QString>
#include <QStringList>
#include <QQmlContext>
#include <screenmanage.h>
#include <appenum.h>
#include <appsource.h>


int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    QQmlContext *Constext = engine.rootContext();
    ScreenManage ScreenManageApp;
    AppSource appsource;
    qmlRegisterUncreatableType<AppEnum>("AppEnum", 1, 0, "AppE", "Not creatable as it is an enum type");
    qmlRegisterUncreatableType<AppEnumCalendarWeek>("AppEnumCalendar", 1, 0, "CALENDAR_WEEK_ENUM", "Not creatable as it is an enum type");
    Constext->setContextProperty("ScreenManageApp", &ScreenManageApp);
    Constext->setContextProperty("AppSource", &appsource);
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
