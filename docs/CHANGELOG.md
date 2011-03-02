Changelog
=========

unreleased(TODO)
----------------

* add message for should\_not
* add description
* raise exception when wrong parametres specified(:count and :minimum simultaneously)
* organize code

0.0.4-dev
---------

* TODO: add more matchers(have\_form,with\_input)?
  * TODO: have\_form
  * TODO: with\_text\_field
  * TODO: with\_password\_field
  * TODO: with\_file\_field?
  * TODO: with\_text\_area
  * TODO: with\_check\_box
  * TODO: with\_radio\_button
  * TODO: with\_select
    * TODO: with\_option
  * TODO: with\_submit

0.0.3
-----

* now following will work:

>     rendered.should have_tag('div') do
>       with_tag('p')
>     end

* tags can be specified via symbol
* classes can be specified via array or string(class-names separated by spaces), so following will work:

>     '<div class="one two">'.should have_tag('div', :with => { :class => ['two', 'one'] })
>     '<div class="one two">'.should have_tag('div', :with => { :class => 'two one' })

0.0.2
------

* documented source code
* added changelog

0.0.1
------

* all needed options and error messages