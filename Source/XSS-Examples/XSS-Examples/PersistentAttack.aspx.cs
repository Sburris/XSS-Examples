using System;
using System.IO;
using System.Runtime.Remoting.Channels;
using System.Web.UI;

namespace XSS_Examples
{
  public partial class PersistentAttack : Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      var dataStore = new DataStore(Server.MapPath("~/DataStore.txt"));
      litMessage.Text = "Hello " + dataStore.GetName() + "!!!";
    }
  }
  public class DataStore
  {
    private readonly string _dataStoreLocation;

    public DataStore(string dataStoreLocation)
    {
      _dataStoreLocation = dataStoreLocation;
    }

    public string GetName()
    {
      using (var reader = new StreamReader(_dataStoreLocation))
      {
        return reader.ReadLine();
      }
    }
  }
}