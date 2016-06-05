

<script language="C#" runat="server">
   void Page_Load(Object sender, EventArgs e) 
   {
      //  Create a connection to the "pubs" database located 
      // on the local computer.
     
      SqlConnection myConnection = new SqlConnection("server=.;" +
         "database=ExaminationSystem;Trusted_Connection=Yes");
      // Connect to the SQL database using a SQL SELECT query to get 
      // all the data from the "Titles" table.
      SqlDataAdapter myCommand = new SqlDataAdapter("SELECT * FROM Branch", myConnection);
      // Create and fill a DataSet.
      DataSet ds = new DataSet();
      myCommand.Fill(ds);
      // Bind MyRepeater to the  DataSet. MyRepeater is the ID of the
      // Repeater control in the HTML section of the page.
      MyRepeater.DataSource = ds;
      MyRepeater.DataBind();
   }
</script>