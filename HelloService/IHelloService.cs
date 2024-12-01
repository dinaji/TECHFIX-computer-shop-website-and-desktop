using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace HelloService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "IHelloService" in both code and config file together.
    public class IHelloService : IIHelloService
    {
        
            public string GetMessage(string name)
        {
            return "Hello " + name;
        }
    }
    }

