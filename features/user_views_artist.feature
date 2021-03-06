Feature: User views artist

  Scenario: User views artist
    Given movement "Example Movement" exists with description "This is an example description."
      And artist "Example Artist" exists with movement name "Example Movement" and born "1900-01-01" and died "1970-05-05"
      And work "Example Work" exists with artist name "Example Artist" and year completed "1900" and materials "oil paints" and image "http://www.tate.org.uk/art/images/work/T/T05/T05010_10.jpg"
    When I am on the show page for that artist
    Then I should see "Example Artist"
      And I should see "Example Movement"
      And I should see "1900-01-01"
      And I should see "1970-05-05"
      And I should see "Example Work"

  Scenario: User clicks Work link
    Given movement "Example Movement" exists with description "This is an example description."
      And artist "Example Artist" exists with movement name "Example Movement" and born "1900-01-01" and died "1970-05-05"
      And work "Example Work" exists with artist name "Example Artist" and year completed "1900" and materials "oil paints" and image "http://www.tate.org.uk/art/images/work/T/T05/T05010_10.jpg"
    When I am on the show page for that artist
      And I follow "Example Work"
    Then I should see "1900"
      And I should see "oil paints"

  Scenario: User clicks Movement link
    Given movement "Example Movement" exists with description "This is an example description."
      And artist "Example Artist" exists with movement name "Example Movement" and born "1900-01-01" and died "1970-05-05"
      And work "Example Work" exists with artist name "Example Artist" and year completed "1900" and materials "oil paints" and image "http://www.tate.org.uk/art/images/work/T/T05/T05010_10.jpg"
    When I am on the show page for that artist
      And I follow "Example Movement"
    Then I should see "This is an example description"
