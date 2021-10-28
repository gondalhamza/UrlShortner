# README

Ruby 2.7+
RAILS_ENV=production rake db:create
RAILS_ENV=production rake db:migrate
RAILS_ENV=production rails s
For console
RAILS_ENV=production rails c
<br>
<b>For Cache Project must be run in production env.</b>


<b>API</b>
1- Compress URL
a - URL: https://url-shortner-tool.herokuapp.com/compress_url

b- Method : POST

c- Body Parameter: It take array of URL
e.g
{"url": ["www.twitter.com", "www.facebook.com"]}


d- It return array of short urls