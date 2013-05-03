# DojoRails

Dojo saves you time and scales with your development process, using web standards as its platform. It’s the toolkit experienced developers turn to for building high quality desktop and mobile web applications.

Dojo toolkit is having almost everything as a widget. We can directly use those by means of AMD loading.

## Installation

Add this line to your application's Gemfile:

    gem 'dojo_rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dojo_rails

## Usage

To use dojo in your application 

Add the gem into your Gemfile
group :assets do
  # ...
  gem 'dojo_rails'
end

then execute
$ bundle

Create a new js file called dojoConfig.js inside app/assets/javascripts
Add this configuration, you can add as many options based upon your requirement
dojoConfig = {parseOnLoad: true}

Make changes to your application.js
Require the dojo toolkit library
//= require dojoConfig
//= require dojo/dojo

Then remove the following lines
//= require jquery
//= require jquery_ujs
It is not required anymore. We are going to use dojo, dijit completely.

Make changes to your application.css
Require the dijit and claro css
*= require dijit
*= require claro/claro

Dojo has themes available as inbuilt files. In this above code, we are using theme "claro". Other themes are nihilo, soria, tundra.

In application layout file add these inside head
<%= stylesheet_link_tag    "application" %>
<%= javascript_include_tag "application" %>
<%= csrf_meta_tags %>

Another important thing to note is, we need to set body of the layout with the theme class then only the loaded theme will reflects in action.
Here, we need to add class "claro" to body
<body class="claro">

We are done with integration of dojo, dijit toolkit in rails application.

Dijit datetextbox integration sample
In this example, we are going to integrate the calendar in our rails application

Add the script in view file
<script>
    require(["dojo/parser", "dijit/form/DateTextBox"]);
</script>

Then add the below html
<label for="date1">Drop down Date box:</label>
<input type="text" name="date1" id="date1" value="2005-12-30"
    data-dojo-type="dijit/form/DateTextBox"
    required="true" />

Reload the page to see datetextbox calendar in action.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
