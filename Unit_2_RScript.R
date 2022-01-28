#Following along in class with R script



ant_ice_loss = read.table(file="data/antarctica_mass_200204_202111.txt", 
                          skip = 31, sep="", header = F,
                          col.names=c("decimal_date", "mass_Gt","sigma_Gt"))

ant_ice_loss
head(ant_ice_loss)
tail(ant_ice_loss)

grn_ice_loss = read.table(file="data/greenland_mass_200204_202111.txt", 
                          skip = 31, sep="", header = F,
                          col.names=c("decimal_date", "mass_Gt","sigma_Gt"))
grn_ice_loss
head(grn_ice_loss)
print(grn_ice_loss)
decimal_date
grn_ice_loss
head(grn_ice_loss)
dim(grn_ice_loss)
summary(grn_ice_loss)

plot(mass_Gt~decimal_date, data=grn_ice_loss, ylab="Greenland Mass Loss (Gt)")

plot(x=decimal_date, y=mass_Gt, data=grn_ice_loss, type="l", ylim=c(-5191,0))
lines(mass_Gt ~ decimal_date, data = grn_ice_loss, col="red")

#add in an NA to account for gap in missions
data_break = data.frame(decimal_date=2018, mass_Gt=NA, sigma_Gt=NA)
data_break

ant_ice_loss_with_NA = rbind(ant_ice_loss, data_break)

head(ant_ice_loss_with_NA)





