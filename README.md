# Safety Culture Test

<b>Requirements</b>
---
In order to execute these tests you must have the following installed:
- Ruby 2.3.0

<b>To run the tests</b>
---
bundle exec cucumber features/safetyculture_login.feature

<b>Use of Page object Model</b>
---
I have made use of the SitePrism gem as this is what I am familiar with. Siteprism offers a way to model each page as a class, and to then use instances of those classes in your tests. If a class represents a page then each element of the page is represented by a method that, when called, returns a reference to that element that can then be acted upon (clicked, set text value), or queried (is it enabled? visible?).

More Information: https://github.com/natritmeyer/site_prism

<b>Rubocop</b>
---
I am familiar with using Rubocop to ensure best practice is being followed

To run Rubocop:
Navigate to the Features directory and type 'rubocop'
Once you have run this command, you will be informed of any errors. If there are errors, fix them and re-run Rubocop until there are zero errors.
If Rubocop is not installed on your machine then running 'bundle install' followed by 'bundle update' should fix this.
