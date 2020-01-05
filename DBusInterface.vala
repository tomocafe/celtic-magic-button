[DBus (name="org.gnome.SessionManager")]
public interface SessionManager : Object
{
    public abstract async void Shutdown() throws Error;
}

