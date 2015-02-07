import sublime
import sublime_plugin

class StraightQuotesCommand(sublime_plugin.TextCommand):
   def run(self, edit):
      for rgn in self.view.find_all("[“”]"):
         self.view.replace(edit, rgn, "\"")
      for rgn in self.view.find_all("[‘’]"):
         self.view.replace(edit, rgn, "\'")
