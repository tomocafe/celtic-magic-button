
public class CelticMagicButtonPlugin : Budgie.Plugin, Peas.ExtensionBase
{
    public Budgie.Applet get_panel_widget(string uuid) {
        return new CelticMagicButtonApplet();
    }
}

public class CelticMagicButtonApplet : Budgie.Applet
{
    protected Gtk.Button button;
    protected Gtk.Image icon;
    private SessionManager? session = null;

    public CelticMagicButtonApplet() {
        init_dbus.begin();
        button = new Gtk.Button();
        button.clicked.connect_after(on_clicked);
        button.relief = Gtk.ReliefStyle.NONE;
        button.set_can_focus(false);
        icon = new Gtk.Image.from_icon_name("celtic-magic-button", Gtk.IconSize.MENU);
        button.add(icon);
        add(button);
        show_all();
    }
   
    async void init_dbus() {
        try {
            session = yield Bus.get_proxy(BusType.SESSION, "org.gnome.SessionManager", "org/gnome/SessionManager");
        }
        catch (Error e) {
            warning("Failed to fetch GNOME session: %s", e.message);
        }
    }
 
    void on_clicked() {
        if (session == null) {
            return;
        }
        Idle.add(() => {
            session.Shutdown.begin();
            return false;
        });
    }
}

[ModuleInit]
public void peas_register_types(TypeModule module) {
    var objmodule = module as Peas.ObjectModule;
    objmodule.register_extension_type(typeof(Budgie.Plugin), typeof(CelticMagicButtonPlugin));
}

