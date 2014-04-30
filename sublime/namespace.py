import os
import sublime_plugin

class InsertNamespaceCommand(sublime_plugin.WindowCommand):

    def run(self, *args, **kwargs):
        file_name = self.window.active_view().file_name()
        namespace = ''
        while True:
            file_name = os.path.dirname(file_name)
            parent_dir_name = os.path.basename(file_name)
            if not parent_dir_name[0].isupper():
                break
            namespace = parent_dir_name + "\\" + namespace
        namespace = '<?php namespace ' + namespace[:-1] + ';'

        self.window.run_command("insert", {"characters": namespace})
