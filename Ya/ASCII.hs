module Ya.ASCII where
import Ya

type Symbol = Bracket `S` Punctuate

pattern Bracket x = This x :: Symbol
pattern Punctuate x = That x :: Symbol

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
pattern A e = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This e)))))))))))))))))))))))) :: Latin
pattern B e = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e)))))))))))))))))))))))) :: Latin
pattern C e = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e))))))))))))))))))))))) :: Latin
pattern D e = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e)))))))))))))))))))))) :: Latin
pattern E e = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e))))))))))))))))))))) :: Latin
pattern F e = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e)))))))))))))))))))) :: Latin
pattern G e = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e))))))))))))))))))) :: Latin
pattern H e = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e)))))))))))))))))) :: Latin
pattern I e = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e))))))))))))))))) :: Latin
pattern J e = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e)))))))))))))))) :: Latin
pattern K e = This (This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e))))))))))))))) :: Latin
pattern L e = This (This (This (This (This (This (This (This (This (This (This (This (This (This (That e)))))))))))))) :: Latin
pattern M e = This (This (This (This (This (This (This (This (This (This (This (This (This (That e))))))))))))) :: Latin
pattern N e = This (This (This (This (This (This (This (This (This (This (This (This (That e)))))))))))) :: Latin
pattern O e = This (This (This (This (This (This (This (This (This (This (This (That e))))))))))) :: Latin
pattern P e = This (This (This (This (This (This (This (This (This (This (That e)))))))))) :: Latin
pattern Q e = This (This (This (This (This (This (This (This (This (That e))))))))) :: Latin
pattern R e = This (This (This (This (This (This (This (This (That e)))))))) :: Latin
pattern S e = This (This (This (This (This (This (This (That e))))))) :: Latin
pattern T e = This (This (This (This (This (This (That e)))))) :: Latin
pattern U e = This (This (This (This (This (That e))))) :: Latin
pattern V e = This (This (This (This (That e)))) :: Latin
pattern W e = This (This (This (That e))) :: Latin
pattern X e = This (This (That e)) :: Latin
pattern Y e = This (That e) :: Latin
pattern Z e = That e :: Latin

type Cased e = e `S` e

pattern Lower, Upper :: e `AR_` e `S` e
pattern Lower x = This x
pattern Upper x = That x

type Letter = Cased Latin

type Digit = Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit `S` Unit

pattern Zero e = This (This (This (This (This (This (This (This (This e)))))))) :: Digit
pattern One e = This (This (This (This (This (This (This (This (That e)))))))) :: Digit
pattern Two e = This (This (This (This (This (This (This (That e))))))) :: Digit
pattern Three e = This (This (This (This (This (This (That e)))))) :: Digit
pattern Four e = This (This (This (This (This (That e))))) :: Digit
pattern Five e = This (This (This (This (That e)))) :: Digit
pattern Six e = This (This (This (That e))) :: Digit
pattern Seven e = This (This (That e)) :: Digit
pattern Eight e = This (That e) :: Digit
pattern Nine e = That e :: Digit

type Caret = Unit `S` Unit `S` Unit `S` Unit `S` Unit

pattern Tab e = This (This (This (This e)))
pattern Newline e = This (This (This (That e)))
pattern Escape e = This (This (That e))
-- Back `ha` Space = This (That e)
pattern Delete e = That e

type Glyph = Letter `S` Digit `S` Symbol

pattern Letter x = This (This x) :: Glyph
pattern Digit x = This (That x) :: Glyph
pattern Symbol x = That x :: Glyph

type ASCII = Glyph `S` Caret

pattern Glyph e = This e :: ASCII
pattern Caret e = That e :: ASCII
