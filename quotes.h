#ifndef QUOTES_H
#define QUOTES_H

#include <QObject>
#include <QDebug>

class Quotes : public QObject
{
    Q_OBJECT
public:
    explicit Quotes(QObject *parent = nullptr);

signals:
    void setQuote(QVariant num);

public slots:
    void getQuote(QString num);
};

#endif // QUOTES_H
