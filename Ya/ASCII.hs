module Ya.ASCII where

import Ya

type Symbol = Bracket `ML` Punctuate

pattern Bracket x = This x :: Symbol
pattern Punctuate x = That x :: Symbol

type Punctuate = () `ML` () `ML` ()
 `ML` () `ML` () `ML` () `ML` () `ML` () `ML` () `ML` ()
 `ML` () `ML` () `ML` () `ML` () `ML` () `ML` () `ML` ()
 `ML` () `ML` () `ML` () `ML` () `ML` () `ML` ()

pattern Doublequote e = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This e))))))))))))))))))))) :: Punctuate
pattern Singlequote e = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e))))))))))))))))))))) :: Punctuate
pattern Hash e        = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e)))))))))))))))))))) :: Punctuate
pattern Hyphen e      = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e))))))))))))))))))) :: Punctuate
pattern At e          = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e)))))))))))))))))) :: Punctuate
pattern Circumflex e       = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e))))))))))))))))) :: Punctuate
pattern Underscore e  = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e)))))))))))))))) :: Punctuate
pattern Grave e       = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e))))))))))))))) :: Punctuate
pattern Bar e         = This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e)))))))))))))) :: Punctuate
pattern Tilde e       = This (This (This (This (This (This (This (This (This (This (This (This (This (That e))))))))))))) :: Punctuate
pattern Plus e        = This (This (This (This (This (This (This (This (This (This (This (This (That e)))))))))))) :: Punctuate
pattern Asterisk e    = This (This (This (This (This (This (This (This (This (This (This (That e))))))))))) :: Punctuate
pattern Percent e     = This (This (This (This (This (This (This (This (This (This (That e)))))))))) :: Punctuate
pattern Ampersand e   = This (This (This (This (This (This (This (This (This (That e))))))))) :: Punctuate
pattern Dollar e      = This (This (This (This (This (This (This (This (That e)))))))) :: Punctuate
--  (Back `ha` Slash) = This (This (This (This (This (This (This (That e))))))) :: Punctuate
pattern Slash e       = This (This (This (This (This (This (That e)))))) -- :: Punctuate
pattern Period e      = This (This (This (This (This (That e))))) :: Punctuate
pattern Comma e       = This (This (This (This (That e)))) :: Punctuate
pattern Semicolon e   = This (This (This (That e))) :: Punctuate
pattern Colon e       = This (This (That e)) :: Punctuate
pattern Exclam e      = This (That e) :: Punctuate
pattern Question e    = That e :: Punctuate

type Bracket = Shape `ML` Shape

type Shape = () `ML` () `ML` () `ML` ()

pattern Round, Curly, Angle, Square :: Shape
pattern Round = This (This (This ()))
pattern Curly = This (This (That ()))
pattern Angle = This (That ())
pattern Square = That ()

pattern Opened, Closed :: e `AR_` e `ML` e
pattern Opened x = This x
pattern Closed x = That x

type Latin = () `ML` () `ML` () `ML` () `ML` ()
 `ML` () `ML` () `ML` () `ML` () `ML` () `ML` () `ML` ()
 `ML` () `ML` () `ML` () `ML` () `ML` () `ML` () `ML` ()
 `ML` () `ML` () `ML` () `ML` () `ML` () `ML` () `ML` ()

pattern A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z :: Latin
pattern A = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This ()))))))))))))))))))))))))
pattern B = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That ()))))))))))))))))))))))))
pattern C = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That ())))))))))))))))))))))))
pattern D = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That ()))))))))))))))))))))))
pattern E = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That ())))))))))))))))))))))
pattern F = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That ()))))))))))))))))))))
pattern G = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That ())))))))))))))))))))
pattern H = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That ()))))))))))))))))))
pattern I = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That ())))))))))))))))))
pattern J = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That ()))))))))))))))))
pattern K = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That ())))))))))))))))
pattern L = This (This (This (This (This (This (This (This (This (This (This (This (This (This (That ()))))))))))))))
pattern M = This (This (This (This (This (This (This (This (This (This (This (This (This (That ())))))))))))))
pattern N = This (This (This (This (This (This (This (This (This (This (This (This (That ()))))))))))))
pattern O = This (This (This (This (This (This (This (This (This (This (This (That ())))))))))))
pattern P = This (This (This (This (This (This (This (This (This (This (That ()))))))))))
pattern Q = This (This (This (This (This (This (This (This (This (That ())))))))))
pattern R = This (This (This (This (This (This (This (This (That ()))))))))
pattern S = This (This (This (This (This (This (This (That ())))))))
pattern T = This (This (This (This (This (This (That ()))))))
pattern U = This (This (This (This (This (That ())))))
pattern V = This (This (This (This (That ()))))
pattern W = This (This (This (That ())))
pattern X = This (This (That ()))
pattern Y = This (That ())
pattern Z = That ()

type Cased e = e `ML` e

pattern Lower, Upper :: e `AR_` e `ML` e
pattern Lower x = This x
pattern Upper x = That x

type Letter = Cased Latin

type Number = () `ML` () `ML` () `ML` () `ML` () `ML` () `ML` () `ML` () `ML` () `ML` ()

pattern Zero e = This (This (This (This (This (This (This (This (This e))))))))
pattern One e = This (This (This (This (This (This (This (This (That e))))))))
pattern Two e = This (This (This (This (This (This (This (That e)))))))
pattern Three e = This (This (This (This (This (This (That e))))))
pattern Four e = This (This (This (This (This (That e)))))
pattern Five e = This (This (This (This (That e))))
pattern Six e = This (This (This (That e)))
pattern Seven e = This (This (That e))
pattern Eight e = This (That e)
pattern Nine e = That e

type Caret = () `ML` () `ML` () `ML` () `ML` () `ML` ()

pattern Backspace = This (This (This (This (This ())))) :: Caret
pattern Tab = This (This (This (This (That ())))) :: Caret
pattern Newline = This (This (This (That ()))) :: Caret
pattern Escape = This (This (That ())) :: Caret
pattern Space = This (That ()) :: Caret
pattern Delete = That () :: Caret

-- Back Space ?
-- Back Slash ?

type Glyph = Letter `ML` Number `ML` Symbol

pattern Letter x = This (This x) :: Glyph
pattern Number x = This (That x) :: Glyph
pattern Symbol x = That x :: Glyph

type ASCII = Glyph `ML` Caret

pattern Glyph e = This e :: ASCII
pattern Caret e = That e :: ASCII
