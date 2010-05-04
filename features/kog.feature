Feature:
  kog should allow me
  As a person
  To parse resources for their meanings

  Scenario Outline: Parse
    Given that I have the URL <url>
    When I parse it for <field>
    Then I expect to <result>
    Examples:
      |                 url              |  field  |   result   |
      | http://example.com/good/data/123 | "type"  | see "band" |
      | http://example.com/good/data/123 | "title" | see "Foo"  |
