# Iris-prediction - opis plików

plik "Predict function with model.txt" zawiera kod funkcji przewidującej gatunki irysów. 
Kod znajduje się w pliku tekstowym więc najlepiej skopiować zawartość i wkleić do konsoli w RStudio. 
Funkcję wywołujemy wpisując w konsoli RStudio komendę: predict_class(sl, sw, pl, pw) np. predict_class(5.0, 3.4, 1.5, 0.2). 
Jako wynik powinniśmy otrzymać nazwę przewidzianego gatunku irysa.  

Plik "plumber.R" zawiera kod funkcji przewidującej gatunki irysów przygotowany do uruchomienia z REST API.
Kod zanjduje się w pliku z rozszerzeniem R, więc wystarczy pobrać plik i uruchomić w RStudio klikając RUN API. 
Powinien wyświetlić się interfejs plumbera z naszą funkcją. Jako parametry należy wpisać parametry irysów sl, sw, pl, pw.
Jako wynik powinniśmy otrzymać nazwę przewidzianego gatunku irysa.
