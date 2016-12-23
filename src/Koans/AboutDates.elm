module AboutDates exposing (testSuite)

import Expect
import Date
import Test exposing (describe, test)
import TestHelpers exposing (..)


-- dates can be created from a Time


ourDate =
    Date.fromTime 0



-- parsing a date could fail, and so returns a Result


parsedDate =
    Date.fromString "1/1/2000 11:30:45 AM"


getField : (Date.Date -> a) -> Result String Date.Date -> String
getField fn date =
    case date of
        Ok value ->
            toString (fn value)

        Err msg ->
            msg


testSuite =
    describe "About Dates"
        [ test "year gets the year" <|
            \() ->
                1969
                    |> Expect.equal (Date.year ourDate)
        , test "month gets the month" <|
            -- a type!
            \() ->
                Date.Dec
                    |> Expect.equal (Date.month ourDate)
        , test "day gets the day" <|
            \() ->
                31
                    |> Expect.equal (Date.day ourDate)
        , test "dayOfWeek gets the day of the week" <|
            -- another type
            \() ->
                Date.Wed
                    |> Expect.equal (Date.dayOfWeek ourDate)
        , test "hour gets the hour" <|
            \() ->
                "11"
                    |> Expect.equal (getField Date.hour parsedDate)
        , test "minute gets the minute" <|
            \() ->
                "30"
                    |> Expect.equal (getField Date.minute parsedDate)
        , test "second gets the second" <|
            \() ->
                "45"
                    |> Expect.equal (getField Date.second parsedDate)
        ]
