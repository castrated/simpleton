#SingleInstance force
^=::
loop{
  MailItem := ComObjCreate("Outlook.Application").CreateItem(0) ; If not Outlook, use a client of choice
  MailItem.Recipients.Add("example0@example.com, example1@example.com") ; Insert target addresses here
  MailItem.Subject := "SPAM" ; Your subject.
  MailItem.body := "spam" ; Mail body.
  MailItem.send
}
return
