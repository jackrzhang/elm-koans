module Main exposing (main)

import AboutArrays
import AboutExpects
import AboutComparisonOperators
import AboutDates
import AboutDictionaries
import AboutFunctions
import AboutLists
import AboutLiterals
import AboutLogicalOperators
import AboutMathematicalOperators
import AboutMaybe
import AboutNumberConversions
import AboutRecords
import AboutRegexes
import AboutResults
import AboutSets
import AboutStrings
import AboutTime
import AboutTuples
import AboutUnionTypes
import Test exposing (describe)
import Test.Runner.Html exposing (run)


main =
    run <|
        describe "The Elm Koans"
            [ AboutExpects.testSuite
            , AboutLiterals.testSuite
            , AboutComparisonOperators.testSuite
            , AboutLogicalOperators.testSuite
            , AboutMathematicalOperators.testSuite
            , AboutNumberConversions.testSuite
            , AboutFunctions.testSuite
            , AboutMaybe.testSuite
            , AboutLists.testSuite
            , AboutArrays.testSuite
            , AboutTuples.testSuite
            , AboutDictionaries.testSuite
            , AboutResults.testSuite
            , AboutStrings.testSuite
            --, AboutRegexes.testSuite
            , AboutTime.testSuite
            , AboutDates.testSuite
            , AboutSets.testSuite
            , AboutRecords.testSuite
            , AboutUnionTypes.testSuite
            ]
