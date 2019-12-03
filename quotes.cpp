#include "quotes.h"
#include <QFile>
#include <vector>
#include <iostream>
#include <fstream>
using namespace std;

Quotes::Quotes(QObject *parent) : QObject(parent)
{

}

void Quotes::getQuote(QString num)
{
    ifstream file("C:\\Users\\evan4\\Documents\\Inspirational_Quotes\\quotes.txt");
    vector<string> quoteVector;
    string str;
    std::string text;

    int numint = num.toInt();

    while (std::getline(file, str)) {
        quoteVector.push_back(str);
    }

    if (numint <= 0 || numint > 10)
    {
        text = "Not a valid number";
    }
    else
    {
        text = quoteVector.at(numint-1);
    }

    QString quote = QString::fromStdString(text);
    QVariant result(quote);

    file.close();
    emit setQuote(result);
}
