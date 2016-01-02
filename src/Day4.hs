{-# LANGUAGE OverloadedStrings #-}

module Day4 (isMatch, findMatch) where

import qualified Data.List
import Data.Digest.Pure.MD5
import Data.ByteString.Lazy.Char8 hiding (isPrefixOf)

isMatch = Data.List.isPrefixOf "00000" . show . md5 . pack . ( "iwrupvqb" ++ )

findMatch = Data.List.head $ Data.List.filter (isMatch . show) [1 ..]
