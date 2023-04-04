# new feature
# Tags: optional

Feature: Json feature testing

  Scenario: Json reader parser
    * def jsonObject =
    """
    [
    {
      "name" : "Tom",
      "city" : "bangalore",
      "age" : "20"
    },
    {
      "name" : "Sam",
      "city" : "LA",
      "age" : "30"
    }
    ]
    """

    * print jsonObject
    * print jsonObject[0].name
    * print jsonObject[1].name + " " + jsonObject[1].city + " " + jsonObject[1].age

  Scenario: ComplexJson reader parser
    * def jsonComplexObject =
    """
   {
   "menu":
   {
  "id": "id-5",
  "value": "99",
  "popup": {
    "menuitem": [
      {"value": "New", "onclick": "CreateNewDoc()"},
      {"value": "Open", "onclick": "OpenDoc()"},
      {"value": "Close", "onclick": "CloseDoc()"}
    ]
  }
}
}
    """

    * print jsonComplexObject
    * print jsonComplexObject.menu.id
    * print jsonComplexObject.menu.popup.menuitem[0].onclick
    * print jsonComplexObject.menu.popup