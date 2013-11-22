using System;

[Serializable()]
public class ChildMergeData
{
    private string _name;
    private string _lookupid;
    private string _location;
    private string _gender;
    private string _dob;
    private string _amount;

    public string Name
    {
        get
        {
            return _name;
        }
        set
        {
            _name = value;
        }
    }

    public string LookupID
    {
        get
        {
            return _lookupid;
        }
        set
        {
            _lookupid = value;
        }
    }

    public string Location
    {
        get
        {
            return _location;
        }
        set
        {
            _location = value;
        }
    }
    
    public string Gender
    {
        get
        {
            return _gender;
        }
        set
        {
            _gender = value;
        }
    }

    public string DOB
    {
        get
        {
            return _dob;
        }
        set
        {
            _dob = value;
        }
    }

    public string Amount
    {
        get
        {
            return _amount;
        }
        set
        {
            _amount = value;
        }
    }
}