# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


  certificate = Certificate.create!(url: "https://www.ssllabs.com/ssltest/analyze.html?d=do2.replicon.ninja", status: "A+")
  Certificate.create!(url: "https://www.ssllabs.com/ssltest/analyze.html?d=regalwins.com", status: "A")
  Certificate.create!(url: "https://www.ssllabs.com/ssltest/analyze.html?d=risk.braspag.com.br", status: "A")
  Certificate.create!(url: "https://www.ssllabs.com/ssltest/analyze.html?d=hafero.ducksdns.org", status: "A")
  Certificate.create!(url: "https://www.ssllabs.com/ssltest/analyze.html?d=www.sickkidsdonations.com", status: "A")
  Certificate.create!(url: "https://www.ssllabs.com/ssltest/analyze.html?d=ffinonline.com", status: "A")
  Certificate.create!(url: "https://www.ssllabs.com/ssltest/analyze.html?d=webservices.izsler.it", status: "F")
  Certificate.create!(url: "https://www.ssllabs.com/ssltest/analyze.html?d=d2.directemar.cl", status: "F")
  Certificate.create!(url: "https://www.ssllabs.com/ssltest/analyze.html?d=www.gruppoandromeda.it", status: "F")
  Certificate.create!(url: "https://www.ssllabs.com/ssltest/analyze.html?d=mbet.arimaraceclub.com", status: "F")
  Certificate.create!(url: "https://www.ssllabs.com/ssltest/analyze.html?d=rfpws.ffin.com", status: "B")
  Certificate.create!(url: "https://www.ssllabs.com/ssltest/analyze.html?d=www.uat.taishinlife.com.tw", status: "B")
  Certificate.create!(url: "https://www.ssllabs.com/ssltest/analyze.html?d=rfpws.ffin.com", status: "B")
  Certificate.create!(url: "https://www.ssllabs.com/ssltest/analyze.html?d=media.edit.cirrus.bloomberg.com.shared.bloomberga.com", status: "T ")

10.times do
  Historic.create!(certificate_id: certificate.id)
end

