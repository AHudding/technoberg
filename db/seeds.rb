# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Job.delete_all
Education.delete_all

Job.create(
name: "Paramount Home Entertainment",
position: "AP Assistant",
dates: "November 2008 - September 2011",
location: "Amsterdam",
description:"Ik was verantwoordelijk voor het crediteurenbeheer van drie landen en reisdeclaraties.")

Job.create(
name: "Booking.com",
position:"AP Accountant",
dates: "September 2011 - December 2013",
location: "Amsterdam",
description:"Ik verzorgde de gehele crediteurenbeheer voor 15 landen en was betrokken bij meerdere automatiserings projecten zoals ReadSoft, Concur en het exporteren van betalingsbestanden naar de bank.")

Job.create(
name: "Servicenow Inc.",
position:"Sr. AP Accountant",
dates: "Januari 2014 - Mei 2016",
location: "Amsterdam",
description:"Ik heb het bedrijf helpen groeien van 4 naar 25 landen van de crediteurenbeheerkant. Ik heb meerdere (automatiserings)projecten geleid zoals VIM, Concur en het exporteren van betalingsbestanden. Ook maakte ik uitgave analyses.")

Education.create(
  institutionname: "Codaisseur",
  description: "Webdevelopment",
  dates: "2016 - 2018",
)

Education.create(
  institutionname: "Horizon College",
  description: "MBO 4, Bank- en Verzekeringswezen",
  dates: "2005 - 2008",
)

Education.create(
  institutionname: "OSG Westfriesland",
  description: "HAVO",
  dates: "2001 - 2005",
)
