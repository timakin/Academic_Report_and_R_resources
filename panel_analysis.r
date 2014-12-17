setwd('/Users/takahashiseiji/Desktop/RStataforReport')
library("plm")

# normal panel analysis
pdata = read.csv('./panel_data.csv')
E <-pdata.frame(pdata, index = c("permalink", "year"), drop.index = TRUE, row.names = TRUE)
fx.presult <- plm(
    m_fr_sum ~
    serial_num + 
    vp_exp_dummy + 
    num_comp_exp + 
    product_num +
    inv_num +
    cs_dummy +
    biz_dummy +
    master_dummy,
    data = E, effect = "individual", model = "within")
re.presult <- plm(
    m_fr_sum ~ 
    serial_num + 
    vp_exp_dummy + 
    num_comp_exp + 
    product_num +
    inv_num +
    cs_dummy +
    biz_dummy +
    master_dummy,
    data = E, effect = "individual", model = "random")
summary( fx.presult )
phtest(fx.presult, re.presult)


# sub-sample of doctor
pdata_doctor = read.csv('./panel_data_doctor.csv')
doctor <-pdata.frame(pdata_doctor, index = c("permalink", "year"), drop.index = TRUE, row.names = TRUE)
fx.presult_doctor <- plm(
    m_fr_sum ~ 
    serial_num + 
    vp_exp_dummy + 
    num_comp_exp + 
    product_num +
    inv_num +
    cs_dummy +
    biz_dummy,
    data = doctor, effect = "individual", model = "within")
summary(fx.presult_doctor)

# sub-sample of advisor
pdata_advisor = read.csv('./panel_data_advisor.csv')
advisor <-pdata.frame(pdata_advisor, index = c("permalink", "year"), drop.index = TRUE, row.names = TRUE)
fx.presult_advisor <- plm(
  m_fr_sum ~ 
    serial_num +  
    num_comp_exp + 
    product_num +
    inv_num +
    cs_dummy +
    biz_dummy +
    master_dummy,
  data = advisor, effect = "individual", model = "within")
summary(fx.presult_advisor)

# sub-sample of advisor
pdata_before = read.csv('./panel_data_2007_2010.csv')
before <-pdata.frame(pdata_before, index = c("permalink", "year"), drop.index = TRUE, row.names = TRUE)
fx.presult_before <- plm(
  m_fr_sum ~ 
    serial_num + 
    vp_exp_dummy +   
    num_comp_exp + 
    product_num +
    inv_num +
    cs_dummy +
    biz_dummy +
    master_dummy,
  data = before, effect = "individual", model = "within")
summary(fx.presult_before)

pdata_after = read.csv('./panel_data_2011_2014.csv')
after <-pdata.frame(pdata_after, index = c("permalink", "year"), drop.index = TRUE, row.names = TRUE)
fx.presult_after <- plm(
  m_fr_sum ~ 
    serial_num + 
    vp_exp_dummy +   
    num_comp_exp + 
    product_num +
    inv_num +
    cs_dummy +
    biz_dummy +
    master_dummy,
  data = after, effect = "individual", model = "within")
summary(fx.presult_after)

