#ifndef TEMPERATUREMODEL_H
#define TEMPERATUREMODEL_H

#include <QObject>

class TemperatureModel : public QObject
{
    Q_OBJECT
public:
    explicit TemperatureModel(QObject *parent = nullptr);

signals:

};

#endif // TEMPERATUREMODEL_H
