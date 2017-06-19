#EXAMS APP (Sinatra)

####Versions

* ruby: 2.3.3
* sinatra 2.0.0

####To run this app:

1) go to *your/path/to/exams/*
2) to seed *db/tables/* run `ruby db/seeds.rb` after configuring DATA_TYPE of models (xml not available)
3) run `ruby application.rb`
4) find page at *http://localhost:4567/*
5) link `/download_csv` responds with semicolon (;) separated file

####To run tests:

* run `ruby test/test.rb` in project folder
* only a few written