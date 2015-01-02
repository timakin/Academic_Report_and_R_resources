setwd('/Users/takahashiseiji/Desktop/RStataforReport')
crunchCrossSectionData = read.csv('./copy_cross_section_data.csv')
#round(cor(crunchCrossSectionData), 4)
#              fr_sum serial_num vp_exp_dummy num_comp_exp product_num num_news inv_num cs_dummy biz_dummy master_dummy     age
#fr_sum        1.0000     0.1234       0.1064       0.0178      0.1672   0.6210  0.0901   0.0182   -0.0001       0.0191  0.0097

#normal plot
cor(crunchCrossSectionData)
summary(crunchCrossSectionData)
#sd(crunchCrossSectionData$m_fr_sum)
#sd(crunchCrossSectionData$serial_num)
#sd(crunchCrossSectionData$vp_exp_dummy)
#sd(crunchCrossSectionData$num_comp_exp)
#sd(crunchCrossSectionData$product_num)
#sd(crunchCrossSectionData$log_num_news)
#sd(crunchCrossSectionData$inv_num)
#sd(crunchCrossSectionData$cs_dummy)
#sd(crunchCrossSectionData$biz_dummy)
#sd(crunchCrossSectionData$master_dummy)
#sd(crunchCrossSectionData$age)
#plot(m_fr_sum~serial_num,data=crunchCrossSectionData,bty='n', ylab='fr_sum', xlab='founded_num')
#irregular removed plotting
#plot(m_fr_sum~serial_num,data=crunchCrossSectionData,bty='n',subset=m_fr_sum<500, ylab='fr_sum', xlab='founded_num')
#crossSectionResult<-lm(
#  m_fr_sum~
#    serial_num+
#    vp_exp_dummy+
#    num_comp_exp+
#    product_num+
#    log_num_news+
#    inv_num+
#    cs_dummy+
#    biz_dummy+
#    master_dummy+
#    age
#  ,data=crunchCrossSectionData)
crossSectionResult<-lm(
  m_fr_sum~
    serial_num+
    product_num+
    inv_num+
    vp_exp_dummy+
    num_comp_exp+
    cs_dummy+
    biz_dummy+
    master_dummy
  ,data=crunchCrossSectionData)
#crossSectionResult<-lm(
#  m_fr_sum~
#    serial_num+
#    product_num+
#    inv_num+
#    num_comp_exp
#  ,data=crunchCrossSectionData)
library(car)
vif(crossSectionResult)
summary(crossSectionResult)
