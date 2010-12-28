###########################################################################
#
# This file is auto-generated by the Perl DateTime Suite locale
# generator (0.05).  This code generator comes with the
# DateTime::Locale distribution in the tools/ directory, and is called
# generate-from-cldr.
#
# This file as generated from the CLDR XML locale data.  See the
# LICENSE.cldr file included in this distribution for license details.
#
# This file was generated from the source file kk_Cyrl_KZ.xml
# The source file version number was 1.1, generated on
# 2008/06/18 21:18:43.
#
# Do not edit this file directly.
#
###########################################################################

package DateTime::Locale::kk_Cyrl_KZ;

use strict;
use warnings;
use utf8;

use base 'DateTime::Locale::kk_Cyrl';

sub cldr_version { return "1\.6\.1" }

{
    my $first_day_of_week = 1;
    sub first_day_of_week { return $first_day_of_week }
}

1;

__END__


=pod

=encoding utf8

=head1 NAME

DateTime::Locale::kk_Cyrl_KZ

=head1 SYNOPSIS

  use DateTime;

  my $dt = DateTime->now( locale => 'kk_Cyrl_KZ' );
  print $dt->month_name();

=head1 DESCRIPTION

This is the DateTime locale package for Kazakh Cyrillic Kazakhstan.

=head1 DATA

This locale inherits from the L<DateTime::Locale::kk_Cyrl> locale.

It contains the following data.

=head2 Days

=head3 Wide (format)

  дуйсенбі
  сейсенбі
  сәренбі
  бейсенбі
  жұма
  сенбі
  жексені

=head3 Abbreviated (format)

  дс.
  сс.
  ср.
  бс.
  жм.
  сһ.
  жс.

=head3 Narrow (format)

  2
  3
  4
  5
  6
  7
  1

=head3 Wide (stand-alone)

  дуйсенбі
  сейсенбі
  сәренбі
  бейсенбі
  жұма
  сенбі
  жексені

=head3 Abbreviated (stand-alone)

  дс.
  сс.
  ср.
  бс.
  жм.
  сһ.
  жс.

=head3 Narrow (stand-alone)

  2
  3
  4
  5
  6
  7
  1

=head2 Months

=head3 Wide (format)

  қаңтар
  ақпан
  наурыз
  сәуір
  мамыр
  маусым
  шілде
  тамыз
  қыркүйек
  қазан
  қараша
  желтоқсан

=head3 Abbreviated (format)

  қаң.
  ақп.
  нау.
  сәу.
  мам.
  мау.
  шіл.
  там.
  қыр.
  қаз.
  қар.
  желт.

=head3 Narrow (format)

  1
  2
  3
  4
  5
  6
  7
  8
  9
  10
  11
  12

=head3 Wide (stand-alone)

  қаңтар
  ақпан
  наурыз
  сәуір
  мамыр
  маусым
  шілде
  тамыз
  қыркүйек
  қазан
  қараша
  желтоқсан

=head3 Abbreviated (stand-alone)

  қаң.
  ақп.
  нау.
  сәу.
  мам.
  мау.
  шіл.
  там.
  қыр.
  қаз.
  қар.
  желт.

=head3 Narrow (stand-alone)

  1
  2
  3
  4
  5
  6
  7
  8
  9
  10
  11
  12

=head2 Quarters

=head3 Wide (format)

  Q1
  Q2
  Q3
  Q4

=head3 Abbreviated (format)

  Q1
  Q2
  Q3
  Q4

=head3 Narrow (format)

  1
  2
  3
  4

=head3 Wide (stand-alone)

  Q1
  Q2
  Q3
  Q4

=head3 Abbreviated (stand-alone)

  Q1
  Q2
  Q3
  Q4

=head3 Narrow (stand-alone)

  1
  2
  3
  4

=head2 Eras

=head3 Wide

  BCE
  CE

=head3 Abbreviated

  BCE
  CE

=head3 Narrow

  BCE
  CE

=head2 Date Formats

=head3 Full

   2008-02-05T12:30:30 = сейсенбі, 5 ақпан 2008 ж.
   1995-12-22T09:05:02 = жұма, 22 желтоқсан 1995 ж.
  -0010-09-15T04:44:23 = сенбі, 15 қыркүйек -010 ж.

=head3 Long

   2008-02-05T12:30:30 = 5 ақпан 2008 ж.
   1995-12-22T09:05:02 = 22 желтоқсан 1995 ж.
  -0010-09-15T04:44:23 = 15 қыркүйек -010 ж.

=head3 Medium

   2008-02-05T12:30:30 = 05.02.2008
   1995-12-22T09:05:02 = 22.12.1995
  -0010-09-15T04:44:23 = 15.09.-010

=head3 Short

   2008-02-05T12:30:30 = 05.02.8
   1995-12-22T09:05:02 = 22.12.95
  -0010-09-15T04:44:23 = 15.09.10

=head3 Default

   2008-02-05T12:30:30 = 05.02.2008
   1995-12-22T09:05:02 = 22.12.1995
  -0010-09-15T04:44:23 = 15.09.-010

=head2 Time Formats

=head3 Full

   2008-02-05T12:30:30 = 12:30:30 UTC
   1995-12-22T09:05:02 = 09:05:02 UTC
  -0010-09-15T04:44:23 = 04:44:23 UTC

=head3 Long

   2008-02-05T12:30:30 = 12:30:30 UTC
   1995-12-22T09:05:02 = 09:05:02 UTC
  -0010-09-15T04:44:23 = 04:44:23 UTC

=head3 Medium

   2008-02-05T12:30:30 = 12:30:30
   1995-12-22T09:05:02 = 09:05:02
  -0010-09-15T04:44:23 = 04:44:23

=head3 Short

   2008-02-05T12:30:30 = 12:30
   1995-12-22T09:05:02 = 09:05
  -0010-09-15T04:44:23 = 04:44

=head3 Default

   2008-02-05T12:30:30 = 12:30:30
   1995-12-22T09:05:02 = 09:05:02
  -0010-09-15T04:44:23 = 04:44:23

=head2 Datetime Formats

=head3 Full

   2008-02-05T12:30:30 = сейсенбі, 5 ақпан 2008 ж. 12:30:30 UTC
   1995-12-22T09:05:02 = жұма, 22 желтоқсан 1995 ж. 09:05:02 UTC
  -0010-09-15T04:44:23 = сенбі, 15 қыркүйек -010 ж. 04:44:23 UTC

=head3 Long

   2008-02-05T12:30:30 = 5 ақпан 2008 ж. 12:30:30 UTC
   1995-12-22T09:05:02 = 22 желтоқсан 1995 ж. 09:05:02 UTC
  -0010-09-15T04:44:23 = 15 қыркүйек -010 ж. 04:44:23 UTC

=head3 Medium

   2008-02-05T12:30:30 = 05.02.2008 12:30:30
   1995-12-22T09:05:02 = 22.12.1995 09:05:02
  -0010-09-15T04:44:23 = 15.09.-010 04:44:23

=head3 Short

   2008-02-05T12:30:30 = 05.02.8 12:30
   1995-12-22T09:05:02 = 22.12.95 09:05
  -0010-09-15T04:44:23 = 15.09.10 04:44

=head3 Default

   2008-02-05T12:30:30 = 05.02.2008 12:30:30
   1995-12-22T09:05:02 = 22.12.1995 09:05:02
  -0010-09-15T04:44:23 = 15.09.-010 04:44:23

=head2 Available Formats

=head3 Hm (H:mm)

   2008-02-05T12:30:30 = 12:30
   1995-12-22T09:05:02 = 9:05
  -0010-09-15T04:44:23 = 4:44

=head3 M (L)

   2008-02-05T12:30:30 = 2
   1995-12-22T09:05:02 = 12
  -0010-09-15T04:44:23 = 9

=head3 MEd (E, M-d)

   2008-02-05T12:30:30 = сс., 2-5
   1995-12-22T09:05:02 = жм., 12-22
  -0010-09-15T04:44:23 = сһ., 9-15

=head3 MMM (LLL)

   2008-02-05T12:30:30 = ақп.
   1995-12-22T09:05:02 = желт.
  -0010-09-15T04:44:23 = қыр.

=head3 MMMEd (E MMM d)

   2008-02-05T12:30:30 = сс. ақп. 5
   1995-12-22T09:05:02 = жм. желт. 22
  -0010-09-15T04:44:23 = сһ. қыр. 15

=head3 MMMMEd (E MMMM d)

   2008-02-05T12:30:30 = сс. ақпан 5
   1995-12-22T09:05:02 = жм. желтоқсан 22
  -0010-09-15T04:44:23 = сһ. қыркүйек 15

=head3 MMMMd (MMMM d)

   2008-02-05T12:30:30 = ақпан 5
   1995-12-22T09:05:02 = желтоқсан 22
  -0010-09-15T04:44:23 = қыркүйек 15

=head3 MMMd (MMM d)

   2008-02-05T12:30:30 = ақп. 5
   1995-12-22T09:05:02 = желт. 22
  -0010-09-15T04:44:23 = қыр. 15

=head3 MMdd (dd.MM)

   2008-02-05T12:30:30 = 05.02
   1995-12-22T09:05:02 = 22.12
  -0010-09-15T04:44:23 = 15.09

=head3 Md (M-d)

   2008-02-05T12:30:30 = 2-5
   1995-12-22T09:05:02 = 12-22
  -0010-09-15T04:44:23 = 9-15

=head3 d (d)

   2008-02-05T12:30:30 = 5
   1995-12-22T09:05:02 = 22
  -0010-09-15T04:44:23 = 15

=head3 ms (mm:ss)

   2008-02-05T12:30:30 = 30:30
   1995-12-22T09:05:02 = 05:02
  -0010-09-15T04:44:23 = 44:23

=head3 y (yyyy)

   2008-02-05T12:30:30 = 2008
   1995-12-22T09:05:02 = 1995
  -0010-09-15T04:44:23 = -010

=head3 yM (yyyy-M)

   2008-02-05T12:30:30 = 2008-2
   1995-12-22T09:05:02 = 1995-12
  -0010-09-15T04:44:23 = -010-9

=head3 yMEd (EEE, yyyy-M-d)

   2008-02-05T12:30:30 = сс., 2008-2-5
   1995-12-22T09:05:02 = жм., 1995-12-22
  -0010-09-15T04:44:23 = сһ., -010-9-15

=head3 yMMM (yyyy MMM)

   2008-02-05T12:30:30 = 2008 ақп.
   1995-12-22T09:05:02 = 1995 желт.
  -0010-09-15T04:44:23 = -010 қыр.

=head3 yMMMEd (EEE, yyyy MMM d)

   2008-02-05T12:30:30 = сс., 2008 ақп. 5
   1995-12-22T09:05:02 = жм., 1995 желт. 22
  -0010-09-15T04:44:23 = сһ., -010 қыр. 15

=head3 yMMMM (yyyy MMMM)

   2008-02-05T12:30:30 = 2008 ақпан
   1995-12-22T09:05:02 = 1995 желтоқсан
  -0010-09-15T04:44:23 = -010 қыркүйек

=head3 yQ (yyyy Q)

   2008-02-05T12:30:30 = 2008 1
   1995-12-22T09:05:02 = 1995 4
  -0010-09-15T04:44:23 = -010 3

=head3 yQQQ (yyyy QQQ)

   2008-02-05T12:30:30 = 2008 Q1
   1995-12-22T09:05:02 = 1995 Q4
  -0010-09-15T04:44:23 = -010 Q3

=head3 yyQ (Q yy)

   2008-02-05T12:30:30 = 1 8
   1995-12-22T09:05:02 = 4 95
  -0010-09-15T04:44:23 = 3 10

=head3 yyyyMM (MM.yyyy)

   2008-02-05T12:30:30 = 02.2008
   1995-12-22T09:05:02 = 12.1995
  -0010-09-15T04:44:23 = 09.-010

=head3 yyyyMMMM (MMMM yyyy 'ж'.)

   2008-02-05T12:30:30 = ақпан 2008 ж.
   1995-12-22T09:05:02 = желтоқсан 1995 ж.
  -0010-09-15T04:44:23 = қыркүйек -010 ж.

=head2 Miscellaneous

=head3 Prefers 24 hour time?

Yes

=head3 Local first day of the week

дуйсенбі


=head1 SUPPORT

See L<DateTime::Locale>.

=head1 AUTHOR

Dave Rolsky <autarch@urth.org>

=head1 COPYRIGHT

Copyright (c) 2008 David Rolsky. All rights reserved. This program is
free software; you can redistribute it and/or modify it under the same
terms as Perl itself.

This module was generated from data provided by the CLDR project, see
the LICENSE.cldr in this distribution for details on the CLDR data's
license.

=cut
