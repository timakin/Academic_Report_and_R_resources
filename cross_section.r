setwd('/Users/takahashiseiji/Desktop/RStataforReport')
crunchCrossSectionData = read.csv('./copy_cross_section_data.csv')
#round(cor(crunchCrossSectionData), 4)
#              fr_sum serial_num vp_exp_dummy num_comp_exp product_num num_news inv_num cs_dummy biz_dummy master_dummy     age
#fr_sum        1.0000     0.1234       0.1064       0.0178      0.1672   0.6210  0.0901   0.0182   -0.0001       0.0191  0.0097

#normal plot
plot(m_fr_sum~serial_num,data=crunchCrossSectionData,bty='n')
#irregular removed plotting
plot(m_fr_sum~serial_num,data=crunchCrossSectionData,bty='n',subset=m_fr_sum<500)
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
    vp_exp_dummy+
    num_comp_exp+
    product_num+
    inv_num+
    cs_dummy+
    biz_dummy+
    master_dummy
  ,data=crunchCrossSectionData)

summary(crossSectionResult)