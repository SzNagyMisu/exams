#EXAMS APP (Sinatra)

* ruby version: 2.3.3
* gem sinatra 2.0.0

To run this app:

1) go to *your/path/to/exams/*
2) to seed *db/tables/* run `ruby db/seeds.rb` (after configuring DATA_TYPE of models)
3) run `ruby application.rb`
4) find page at *http://localhost:4567/*
5) link `/download_csv` responds with semicolon (;) separated file
