
CREATE TABLE MenuGrp (
    MenuGrp_ID INT(11) NOT NULL AUTO_INCREMENT,
    MenuGrp_Name VARCHAR(30) NOT NULL,
	MenuGrp_DisplayTxt VARCHAR(200) NOT NULL,
    Menu_ChildID VARCHAR(30) NOT NULL,
    Who VARCHAR(50) NOT NULL,
    PRIMARY KEY (MenuGrp_ID)
);

Insert into MenuGrp(MenuGrp_Name,MenuGrp_DisplayTxt,Menu_ChildID,Who) values('Admin','Admin',0,CURRENT_TIMESTAMP);
Insert into MenuGrp(MenuGrp_Name,MenuGrp_DisplayTxt,Menu_ChildID,Who) values('Accounts','Accounts Dept',1,CURRENT_TIMESTAMP);
Insert into MenuGrp(MenuGrp_Name,MenuGrp_DisplayTxt,Menu_ChildID,Who) values('Teaching','Teaching Dept',1,CURRENT_TIMESTAMP);
Insert into MenuGrp(MenuGrp_Name,MenuGrp_DisplayTxt,Menu_ChildID,Who) values('Lab','Lab Dept',1,CURRENT_TIMESTAMP);
Insert into MenuGrp(MenuGrp_Name,MenuGrp_DisplayTxt,Menu_ChildID,Who) values('NonTeaching','Non Teaching Dept',1,CURRENT_TIMESTAMP);




CREATE TABLE MenuItems (
    Menu_ID INT(11) NOT NULL AUTO_INCREMENT,
    MenuGrp_ID INT(11) NOT NULL,
    MenuName VARCHAR(100) NOT NULL,
    MenuDisplayTxt VARCHAR(200) NOT NULL,
    MenuFileName VARCHAR(100) NOT NULL,
    MenuURL VARCHAR(500) NOT NULL,
    USE_YN CHAR(1) DEFAULT 'Y' ,
    Who VARCHAR(50) NOT NULL,
    PRIMARY KEY (Menu_ID),
    KEY fk_user_idx (MenuGrp_ID),
    CONSTRAINT fk_MenuGrp_ID FOREIGN KEY (MenuGrp_ID)
        REFERENCES MenuGrp (MenuGrp_ID)
);


Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(1,'Institute','Institute Management','Institute','/Institute',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(1,'School','School Management','School','/School',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(1,'Course','Course','Course','/Course',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(1,'Batch','Batch Management','Batch','/Batch',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(1,'Fee','Fee Management','Fee','/Fee',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(1,'Library','Library Management','Library','/Library',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(1,'Penalty','Penalty Management','Penalty','/Penalty',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(1,'Subject','Subject Management','Subject','/Subject',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(1,'Student','Student Management','Student','/Student',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(1,'Examination','Examination','Examination','/Examination',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(1,'CustomReport','Custom Report','Custom','/Custom',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(1,'AccessRight','Access Right','Access','/Access',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(1,'Stationary','Stationary','Stationary','/Stationary',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(1,'Payroll','Payroll Management','Payroll','/Payroll',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(1,'TimeTable','Time Table','TimeTable','/TimeTable',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(1,'PurchaseAndSupplier','PurchaseAndSupplier','PurchaseAndSupplier','/PurchaseAndSupplier',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(1,'Employee','Employee Management','Employee','/Employee',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(1,'Inventory','Inventory Management','Inventory','/Inventory',CURRENT_TIMESTAMP);
commit;



Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(2,'Fee','Fee Management','Fee','/Fee',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(2,'Penalty','Penalty Management','Penalty','/Penalty',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(2,'CustomReport','Custom Report','Custom','/Custom',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(2,'Payroll','Payroll Management','Payroll','/Payroll',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(2,'PurchaseAndSupplier','PurchaseAndSupplier','PurchaseAndSupplier','/PurchaseAndSupplier',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(2,'Employee','Employee Management','Employee','/Employee',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(2,'Inventory','Inventory Management','Inventory','/Inventory',CURRENT_TIMESTAMP);

Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(3,'Course','Course','Course','/Course',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(3,'Batch','Batch Management','Batch','/Batch',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(3,'Subject','Subject Management','Subject','/Subject',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(3,'Student','Student Management','Student','/Student',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(3,'Examination','Examination','Examination','/Examination',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(3,'AccessRight','Access Right','Access','/Access',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(3,'TimeTable','Time Table','TimeTable','/TimeTable',CURRENT_TIMESTAMP);

Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(4,'Course','Course','Course','/Course',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(4,'Batch','Batch Management','Batch','/Batch',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(4,'Subject','Subject Management','Subject','/Subject',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(4,'Student','Student Management','Student','/Student',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(4,'Examination','Examination','Examination','/Examination',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(4,'AccessRight','Access Right','Access','/Access',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(4,'TimeTable','Time Table','TimeTable','/TimeTable',CURRENT_TIMESTAMP);

Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(5,'Stationary','Stationary','Stationary','/Stationary',CURRENT_TIMESTAMP); 
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(5,'PurchaseAndSupplier','PurchaseAndSupplier','PurchaseAndSupplier','/PurchaseAndSupplier',CURRENT_TIMESTAMP);
Insert into MenuItems(MenuGrp_ID,MenuName,MenuDisplayTxt,MenuFileName,MenuURL,Who) values(5,'Employee','Employee Management','Employee','/Employee',CURRENT_TIMESTAMP);
commit;