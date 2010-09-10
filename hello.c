
#include <stdio.h>
#include <stdlib.h>
#include <gtk/gtk.h>

static void SendHelloWorld(void *p);

int main(int argc, char *argv[])
{
	GtkWidget *win = NULL;
	GtkWidget *vbox = NULL;
	GtkWidget *menu_bar = NULL;
	GtkWidget *root_menu = NULL;
	GtkWidget *sub_menu = NULL;
	GtkWidget *menu_item_sendmsg = NULL;
	GtkWidget *menu_item_exit = NULL;

	/* Initialize GTK+ */
	g_log_set_handler("Gtk", G_LOG_LEVEL_WARNING, (GLogFunc) gtk_false, NULL);
	gtk_init(&argc, &argv);
	g_log_set_handler("Gtk", G_LOG_LEVEL_WARNING, g_log_default_handler, NULL);

	/* Create the main window */
	win = gtk_window_new(GTK_WINDOW_TOPLEVEL);
	gtk_window_set_title(GTK_WINDOW(win), "Hello World 小程序");
	gtk_window_set_default_size(GTK_WINDOW(win), 400, 300);
	gtk_widget_realize(win);

	/* Create a vertical box */
	vbox = gtk_vbox_new(FALSE, 0);
	gtk_container_add(GTK_CONTAINER(win), vbox);

	/* Create menus */
	menu_bar = gtk_menu_bar_new();
	{
		root_menu = gtk_menu_item_new_with_label("文件(F)");
		{
			sub_menu = gtk_menu_new();
			{
				menu_item_sendmsg = gtk_menu_item_new_with_label("发送“Hello world!”...");
				menu_item_exit = gtk_menu_item_new_with_label("退出(X)");
				gtk_menu_shell_append(GTK_MENU_SHELL(sub_menu), menu_item_sendmsg);
				gtk_menu_shell_append(GTK_MENU_SHELL(sub_menu), menu_item_exit);
			}
			gtk_menu_item_set_submenu(GTK_MENU_ITEM(root_menu), sub_menu);
		}
		gtk_menu_shell_append(GTK_MENU_SHELL(menu_bar), root_menu);
	}
	gtk_box_pack_start(GTK_BOX(vbox), menu_bar, FALSE, FALSE, 0);

	/* Connect signals */
	g_signal_connect(win, "destroy", gtk_main_quit, NULL);
	g_signal_connect_swapped(menu_item_sendmsg, "activate", G_CALLBACK(SendHelloWorld), NULL);
	g_signal_connect_swapped(menu_item_exit, "activate", gtk_main_quit, NULL);

	/* Enter the main loop */
	gtk_widget_show_all(win);
	gtk_main();
	return (0);
}

static void SendHelloWorld(void *p)
{
	fprintf(stderr, "Hello world!\n");
}
