#!/usr/bin/env bash
#
# Estimate the value of Pi via Monte Carlo

# Read in and parse input variables from command-line arguments
if (( "${#}" > 0 )); then
  while (( "${#}" > 0 )); do
    case "${1}" in
      -b | --bytes ) bytes="${2}" ;;
      -r | --round ) round="${2}" ;;
      -s | --samples ) samples="${2}" ;;
    esac
    shift 2
  done
fi

# Calculate the maximum value for an unsigned integer of size $bytes
maxint=$(echo "2^(8*${bytes})-1" | bc )

# Initialize sample counts; $inside will count the number of samples 
# that are located 'inside' the radius of a unit circle, while $outside
# will count the number of samples that are located 'outside' the radius
# of a unit circle.
inside=0
outside=0

for (( i = 1; i <= $samples; i++ )); do
  # Get two uniformly distributed random integers of size $bytes
  j=$(od -An -N ${bytes} -t u${bytes} -v < /dev/urandom)
  k=$(od -An -N ${bytes} -t u${bytes} -v < /dev/urandom)

  # Normalize these random integers with respect to $maxint to obtain 
  # two uniformly distributed random real numbers on unit interval
  x=$(bc <<< "scale=${round}; ${j}/${maxint}" )
  y=$(bc <<< "scale=${round}; ${k}/${maxint}" )

  # Compute radial distance of (x,y) from the origin of the unit circle
  z=$(bc <<< "scale=${round}; sqrt ( ${x}^2 + ${y}^2 )" )

  # Increment sample count
  if (( $(bc <<< "${z} <= 1.0") )); then
    (( inside++ ))
  else
    (( outside++ ))
  fi
done

# Compute estimate of Pi
pi=$(bc <<< "scale=${round}; 4*${inside}/(${inside}+${outside})")
echo $pi
