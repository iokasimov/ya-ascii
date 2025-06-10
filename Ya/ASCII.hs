module Ya.ASCII where

import Ya

type Symbol = (Unit # Bracket) `S` (Unit # Punctuate)

pattern Bracket x = This (Tag x) :: Symbol
pattern Punctuate x = That (Tag x) :: Symbol

type Punctuate = Unit `S` Unit `S` Unit `S` Unit `S` Unit
 `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit
 `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit
 `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit

pattern Doublequote e = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This e)))))))))))))))))))))))
pattern Singlequote e = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e)))))))))))))))))))))))
pattern Hash e        = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e))))))))))))))))))))))
pattern Equality e      = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e)))))))))))))))))))))
pattern Hyphen e      = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e))))))))))))))))))))
pattern At e          = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e)))))))))))))))))))
pattern Circumflex e  = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e))))))))))))))))))
pattern Underscore e  = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e)))))))))))))))))
pattern Grave e       = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e))))))))))))))))
pattern Bar e         = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e)))))))))))))))
pattern Tilde e       = This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e))))))))))))))
pattern Plus e        = This (This (This (This (This (This (This (This (This (This (This (This (This (That e)))))))))))))
pattern Asterisk e    = This (This (This (This (This (This (This (This (This (This (This (This (That e))))))))))))
pattern Percent e     = This (This (This (This (This (This (This (This (This (This (This (That e)))))))))))
pattern Ampersand e   = This (This (This (This (This (This (This (This (This (This (That e))))))))))
pattern Dollar e      = This (This (This (This (This (This (This (This (This (That e)))))))))
--  (Back `ha` Slash)   = This (This (This (This (This (This (This (This (That e))))))))
pattern Slash e       = This (This (This (This (This (This (This (That e)))))))
pattern Period e      = This (This (This (This (This (This (That e))))))
pattern Comma e       = This (This (This (This (This (That e)))))
pattern Semicolon e   = This (This (This (This (That e))))
pattern Colon e       = This (This (This (That e)))
pattern Exclam e      = This (This (That e))
pattern Question e    = This (That e)
pattern Space e       = That e

type Bracket = Shape `S` Shape

type Shape = Unit `S` Unit `S` Unit `S` Unit

pattern Round, Curly, Angle, Square :: Shape
pattern Round = This (This (This Unit))
pattern Curly = This (This (That Unit))
pattern Angle = This (That Unit)
pattern Square = That Unit

pattern Opened, Closed :: e `AR_` e `S` e
pattern Opened x = This x
pattern Closed x = That x

type Latin = Unit `S` Unit `S` Unit `S` Unit `S` Unit
 `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit
 `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit
 `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit

-- pattern A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z :: Latin
pattern A e = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This e))))))))))))))))))))))))
pattern B e = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e))))))))))))))))))))))))
pattern C e = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e)))))))))))))))))))))))
pattern D e = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e))))))))))))))))))))))
pattern E e = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e)))))))))))))))))))))
pattern F e = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e))))))))))))))))))))
pattern G e = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e)))))))))))))))))))
pattern H e = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e))))))))))))))))))
pattern I e = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e)))))))))))))))))
pattern J e = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e))))))))))))))))
pattern K e = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e)))))))))))))))
pattern L e = This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e))))))))))))))
pattern M e = This (This (This (This (This (This (This (This (This (This (This (This (This (That e)))))))))))))
pattern N e = This (This (This (This (This (This (This (This (This (This (This (This (That e))))))))))))
pattern O e = This (This (This (This (This (This (This (This (This (This (This (That e)))))))))))
pattern P e = This (This (This (This (This (This (This (This (This (This (That e))))))))))
pattern Q e = This (This (This (This (This (This (This (This (This (That e)))))))))
pattern R e = This (This (This (This (This (This (This (This (That e))))))))
pattern S e = This (This (This (This (This (This (This (That e)))))))
pattern T e = This (This (This (This (This (This (That e))))))
pattern U e = This (This (This (This (This (That e)))))
pattern V e = This (This (This (This (That e))))
pattern W e = This (This (This (That e)))
pattern X e = This (This (That e))
pattern Y e = This (That e)
pattern Z e = That e

type Cased e = e `S` e

pattern Lower, Upper :: e `AR_` e `S` e
pattern Lower x = This x
pattern Upper x = That x

type Letter = Cased Latin

type Digit = Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit

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

type Caret = Unit `S` Unit `S` Unit `S` Unit `S` Unit

pattern Tab e = This (This (This (This e)))
pattern Newline e = This (This (This (That e)))
pattern Escape e = This (This (That e))
-- Back `ha` Space = This (That e)
pattern Delete e = That e

type Glyph = (Unit # Letter) `S` (Unit # Digit) `S` (Unit # Symbol)

pattern Letter x = This (This (Tag x)) :: Glyph
pattern Digit x = This (That (Tag x)) :: Glyph
pattern Symbol x = That (Tag x) :: Glyph

type ASCII = (Unit # Glyph) `S` (Unit # Caret)

pattern Glyph e = This (Tag e) :: ASCII
pattern Caret e = That (Tag e) :: ASCII
