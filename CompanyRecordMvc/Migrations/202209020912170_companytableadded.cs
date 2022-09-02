namespace CompanyRecordMvc.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class companytableadded : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Company",
                c => new
                    {
                        CompanyId = c.Int(nullable: false, identity: true),
                        CompanyName = c.String(nullable: false),
                        Emailaddress = c.Int(nullable: false),
                        Newsletter = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.CompanyId);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Company");
        }
    }
}
