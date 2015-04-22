# Dates, Time and Time Zones

Time is amazingly complicated. Suck it up, buttercup.

## Date and Time Formats

### Dates:

Different cultures format dates in different ways.  For example, the 12th of Decemeber in the year 2012 could be formatted as:

    | Region            | Date       |
    | Europe / ISO 8601 | 2012/12/04 |
    | United States     | 12/04/2012 |
    | United Kingdom    | 04/12/2012 |

This can be extremely confusing and difficult to parse.  For example, looking at '12/04/2012' and '04/12/2012' from the viewpoint of an American, would actually represent two different dates: The fourth day of Deecember in 2012, and the twelth day of April in 2012.  Without the dates being specifically noted as originating from a specific region, there's no way to know what date the string actually represents.

#### Trick: Figuring out how far between a birthday and today's date

Starting with the input of birth month and birth day, assume that the year is in the next year.  Subtract the current date from the modified birthday, then modulo by 365.

Example 1: they already had a birthday this year

    2.1.1 :009 > require 'date'
     => true
    2.1.1 :010 > d1 = Date.parse("2015/08/09")
     => #<Date: 2015-08-09 ((2457244j,0s,0n),+0s,2299161j)>
    2.1.1 :011 > d2 = Date.today
     => #<Date: 2014-08-10 ((2456880j,0s,0n),+0s,2299161j)>
    2.1.1 :012 > difference = d1 - d2
     => (364/1)
    2.1.1 :013 > difference % 365
     => (364/1)

Example 2: birthday is upcoming

    2.1.1 :013 > require 'date'
     => true
    2.1.1 :014 > d1 = Date.parse("2015/12/09")
     => #<Date: 2015-12-09 ((2457366j,0s,0n),+0s,2299161j)>
    2.1.1 :015 > d2 = Date.today
     => #<Date: 2014-08-10 ((2456880j,0s,0n),+0s,2299161j)>
    2.1.1 :016 > difference = d1 - d2
     => (486/1)
    2.1.1 :017 > difference % 365
     => (121/1)

### Times:

Time is typically formatted in either 12-hour (e.g. 9:00PM) or 24-hour (e.g. 21:00) time.

### Time Zones:

Time zones are a completely arbitrary system of what time it is in a particular location.  Completely. Arbitrary.  If you don't believe me, consider this:  There are half time zones, that are offset by half and hour.

Add in the fact that different parts of the world transition to daylight savings time at different dates, and that not every region even participates in daylight savings time.

The most important timezone is Coordinated Universal Time (UTC), which is functionally equivalent to Greenwich Mean Time (GMT).  All other time zones are offsets of UTC.  For example, Central Daylight Time is UTC-5, which means that 12PM CDT is 5PM UTC.

## Compensating for Regional Date/Time differences:

Representing datetime consistently across regions and timezones is quite difficult.  So, in computer systems, we typically convert local time to a shared epoch time.

Epoch time, also called Unix time, is the number of seconds since 12:00AM UTC on January 1st, 1970.

## Sources and Further Reading

* [Unix Time (Wikipedia)](http://en.wikipedia.org/wiki/Unix_time)
* [Epoch Converter](http://www.epochconverter.com/)
* [Time Zones (Wikipedia)](http://en.wikipedia.org/wiki/Time_zone)
* [Every Time Zone](http://everytimezone.com/)
