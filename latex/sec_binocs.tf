\chapter{BINOCS} \label{sec:binocs}

\section{Current Binary Detection Techniques} \label{sec:currentTechniques}
Current cluster binary studies are carried out using one of two methods, each of which experience issues which limit their effectiveness in answering the above science questions. The strengths and limitations of the two current methods are described below.

\subsection{Two-Band Photometry} \label{sec:twoBand}
Binary stars will be brighter than a single star with the same mass as the primary, due to additional flux from the secondary star. In addition, the star's color will be shifted by the smaller (and hence redder) star. When plotted on a CMD, main sequence binaries will be offset above and to the right from the single star main sequence. Considering the special case of an equal-mass binary system, the binary will have the same color as a component single star, but will be twice as bright. Using equation \eqref{eq:MagSystem}, we find the difference in magnitudes:

\begin{equation}\label{eq:binaryMagDiff}
m_S - m_B = -2.5 \log_{10} \left( \frac{F_S}{F_B} \right) = -2.5 \log_{10} \left( \frac{F_S}{2 F_S} \right) = 0.753
\end{equation}

An equal-mass binary system will be located 0.753 magnitudes above the corresponding single star on a CMD. Binaries with a mass ratio less than one will be located at various locations between the single star main sequence and the equal mass binary sequence on the CMD. Two-band photometry studies attempt to measure the binary properties of a cluster using a single CMD by measuring the distance between a star and the single star main sequence.

The distance a binary star is from the single star main sequence depends not only on the mass ratio of the system, but also the primary mass. Figure \ref{fig:twoBandCMD} shows the position of binary stars on a CMD for various primary masses and mass ratios. Binaries with a mass ratio of 0.5 (open squares) lie close to the single star main sequence for primary stars with mass $< 2 M_\odot$ and close to the equal mass binary sequence for primary masses of $> 3 M_\odot$. 

\begin{figure}
\centering
\includegraphics[width=0.6\textwidth]{../plots/jpg/BinaryCMD.jpg}
\parbox{0.85\textwidth}{\caption[Position of binaries on CMD]{Figure reproduced from \citet{1998MNRAS.300..977H}. Theoretical single star and equal mass binary main sequences for a star cluster covering a range of magnitudes. For each primary mass, points are plotted on the CMD for every binary mass fraction in steps of 0.1. Open squares are binaries with a mass ratio of 0.5. \label{fig:twoBandCMD}}}
\end{figure}
This binary detection technique is very sensitive to errors. For low mass primaries, small color errors will blend together single stars and binaries with a mass ratio of $< 0.5$. On the high mass end, it becomes hard to differentiate between primary masses, as all binaries with mass ratios $> 0.5$ lie along the equal mass binary track. Figure \ref{fig:twoBandCMD} shows binary positions for high primary masses in a grid of 1 $M_\odot$. Attempting to measure using a finer grid is impossible, as many binaries will begin to overlap.

Two-band photometry studies are most useful for quickly determining the binary fraction of a cluster; it only requires measurements in two filters. While it is impossible to accurately determine individual masses of binary systems, binaries with mass ratios greater than 0.5 can be grouped together and measured (see \citet{2012AA...540A..16M}). Determining the individual mechanics of the binary systems within a cluster, necessary for the science drivers of this research, requires a more robust approach.


\subsection{Radial Velocity Studies}\label{sec:PastRV}
The most accurate way of detecting binaries is through the use of radial velocities of spectroscopic binaries (described in \S\ref{sec:specBinary}). The value of these studies is the wealth of information on star orbits that can be determined (orbital period, eccentricity). RV studies of cluster binaries, while powerful due to the amount of information they give, are limited in several ways.\\

\noindent \textbf{Sample Size:} Since RVs are determined spectroscopically, there are only a small number of stars that can be measured at a single time. Photometry (imaging) of a cluster can determine magnitudes for thousands of stars with a single image, while spectroscopy, at maximum, can measure spectra for a few hundred stars at once. In order to survey a cluster, a large amount of telescope time must be used to cover all stars.\\

\noindent \textbf{Multiple Visits:} Stellar spectra must be obtained multiple times in order to determine whether a star displays shifting velocities. Fully characterizing the orbits of both stars requires many repeat observations, depending on the orbital period of the system. This multiplies the necessary telescope time for a quality RV study in order to detect and classify binaries. \\

\noindent \textbf{Limiting Magnitude:} In order to accurately determine a star's velocity, a certain level of signal-to-noise must be achieved. For a high-resolution spectrometer (R $\sim$ 20,000), the incoming flux is spread across all resolution elements. Comparing to a comparable length photometric exposure, we find the limiting magnitude difference:

\begin{equation}
m_{\text{phot}} - m_{\text{spec}} = -2.5 \log_{10} \left( \frac{1}{20000} \right) = 10.8
\label{eq:SpecLimit}
\end{equation}

In the time it will take a spectroscopic measurement to complete on a 10th magnitude star, all stars down to 20th magnitude could be measured photometrically to the same signal-to-noise. Low-mass stars are more numerous than high-mass stars, and therefore very important when understanding the dynamics of the cluster system. Ignoring a vast majority of the low-mass members within a cluster will severely hamper the power of the results. \\

\noindent \textbf{Inclination \& Orbital Period:} Mass determination using double-lined binaries is complicated by the inclination of the system. While RV studies can determine the orbital mechanics of the system, they cannot accurately determine masses. Without accurate masses for a large percentage of binary systems within the cluster, the science goals cannot be achieved. In addition, RV studies are limited by the resolution of their spectrometer; systems with doppler shifts less than the resolution of the spectrometer will not be registered as variable. Only binary systems with short enough orbital periods will produce large enough doppler shifts to be detected. \\

Both of the current binary detection methods are inadequate to answer the science questions posed in \S\ref{sec:questions}. To deeply understand the binary populations of open clusters, and new method must be employed which can determine accurate masses for all members of a cluster within a reasonable amount of telescope time. \\

This new binary detection method is presented below, nicknamed \textsc{binocs}: \textsc{Binary INformation from Open Clusters using SEDs}. The \binocs moniker will be used in reference to several different concepts throughout this paper: 
\begin{itemize}
\item This project and body of work as a whole
\item The method of binary detection to be described below
\item The computational code which implements this method
\end{itemize}

\section{The BINOCS Method} \label{sec:binocs_method}
As a first approximation, stars are blackbodies, with characteristic energy distribution curves determined solely by their temperature. By imaging a star using multiple filters (which only allow a specific range of wavelengths) across the spectrum, one should be able to ``re-build'' this blackbody curve. By comparing the rebuilt curve to blackbodies of different temperatures, one would be able to determine the temperature of the observed star. Similarly, a binary system could not be accurately modelled by a single blackbody curve, but two blackbodies added together. In this theoretical scenario, if a star did not fit any single blackbody curve, but fit a combination of two curves, it would be classified as a binary system with component stars having the associated temperatures.

In practice, stars are not blackbodies, but the main premise stays the same. Stellar structure models exist which predict the \emph{spectral energy distribution} (SED) of a star given its parameters: age, metallicity, mass. The star is a member of a cluster with known parameters, so age and metallicity are given. By matching stars to these models, mass can be determined, similar to how temperature could be determined in the idealized blackbody case. If a star does not fit any of the single-star SEDs, it is determined to be a binary system, and is compared to combinations of SEDs.

\begin{figure}
\begin{center}
\includegraphics[trim= 7mm 125mm 5mm 5mm, clip, width=0.9\textwidth]{../plots/eps/binocs_example.eps}
\parbox{0.9\textwidth}{\caption[\binocs method example]{Comparison of star in open cluster M67 with model SEDs. Observed data in 11 filters shown in red. \emph{(Left)} Observed SED compared to two best-fit single models. \emph{(Right)} Observed SED compared to best-fit binary model.\label{fig:binocsexample}}}
\end{center}
\end{figure}

An example of this method is shown in figure \ref{fig:binocsexample}. A star within the open cluster M67 (NGC 2682) was imaged in 11 filters, $ugriJHK_S$[3.6][4.5][5.8][8.0], and an observed SED was created. This observed SED was compared to all available single-star models for the cluster, producing two close-fitting models. As seen in the left panel of figure \ref{fig:binocsexample}, the 1.024 M$_\odot$ model fits the optical region of the observed SED, but diverges for the IR. The 1.062 M$_\odot$ model fits much more accurately in the mid-IR, but overestimates the flux in the optical. There are no single-star model SEDs which approximate what was observed, but when compared to binary SED models, the data is fit much more closely. This star was classified as a single star in a previous RV study of M67 \citep{Mathieu:1997tk}, but from this comparison of the SED it is most likely a binary system.

\section{The BINOCS Code} \label{sec:binocs_code}
Star clusters often contain thousands of stars, which need to be compared to tens of thousands of SED models. These comparisons cannot be done by hand; a computational code is necessary. The \binocs code used in this work is publicly available from GitHub\footnote{\url{http://github.com/bathompso/binocs}} as a Python module.

The \binocs code first creates a library of synthetic binary SEDs. Using a stellar structure model called an \emph{isochrone}, the code reads in all single-star model SEDs: magnitude measurements in all 17 possible bands ($UBVRIugrizJHK_S$[3.6][4.5][5.8][8.0]) for stars with varying masses in the cluster. The isochrone magnitudes are shifted to the distance of the cluster being observed, using \eqref{eq:MagnitudeDistanceRel}, and adjusted for extinction.

Isochrones often come in coarse mass grids, however, hampering the code's ability to accurately determine masses. To overcome this, stellar parameters and magnitude are cubically interpolated with respect to mass onto a new mass grid. For most clusters, a grid spacing of 0.01 M$_\odot$ is used. Using these newly-interpolated single-star models, the \binocs code creates binary models by combining filter fluxes from the component primary and secondary models:
\begin{equation}
V_{binary} = -2.5 \log_{10} \left( F_{V,primary} + F_{V,secondary} \right)
\end{equation}
\begin{equation} \label{eq:binflux}
V_{binary} = -2.5 \log_{10} = \left( 10^{ -V_{primary}/2.5} + 10^{ -V_{secondary}/2.5} \right)
\end{equation}

Using \eqref{eq:binflux} for each of the 17 filters, binary SEDs can be created for every possible configuration.

Next, each observed star is compared to every binary SED model using:
\begin{equation} \label{eq:binocskernel}
\Phi = \sum_{\text{filters}} \frac{1}{m_{\text{star}} - m_{\text{model}} + 0.01}
\end{equation}

If any of the elements of the sum is $< 10$, meaning that the difference in magnitudes is $> 0.09$ (well above the usual observational uncertainty), then the filter is considered ``distant'' and not included in computing $\Phi$. To ensure a quality comparison, a model must have three of five ``close'' optical filters (from $UBVRI$ or $ugriz$) , all three near-IR filters considered ``close'', and two of four mid-IR filters marked ``close.'' After removing those models without enough close filters, all $\Phi$ values are divided by the number of filters used in the sum. This ensures that a worse-fitting model will not be chosen over a better-fitting one simply because it may be marked ``close'' for more filters. The model with the highest $\Phi$ per filter is chosen as the best-fit model, and recorded. If no models have enough close filters, the star is marked as a \emph{non-member}.

After comparing each star to the full model library, it is compared to only single models, using a much less stringent close filter cut --- each sum element must be $> 1$. The purpose of this comparison is two-fold: first is to be able to compare best-fitting single and binary models for illustrative purposes, as shown in figure \ref{fig:binocsexample}. Secondly, some stars, while classified as binaries through the \binocs method, are better classified as singles due to other considerations (these cuts will be explained in \S\ref{sec:minq}). If a star is forced to be classified as single, the parameters from this stage of fitting will be used to estimate its parameters.

When taking an image of a cluster, stars that are not part of the cluster will also be included: star within the field of view of the telescope but not within the bounds of the cluster, or stars in front of or behind the cluster. These stars contaminate a plotted CMD: bright stars that are at a further distance than the cluster may intersect with the cluster's main sequence. Because open clusters are formed in the disk of the Milky Way, where there are many field stars, this contamination can be significant. Two-band detection cannot disentangle these contaminants, throwing off some of their measurements. Using a wide wavelength range allowed the \binocs code to disentangle some of these problem stars. Although a star may lie on the main sequence in an optical CMD, it may lie far off of it in the IR. By removing stars without the necessary ``close'' magnitudes, much of the contamination which plagues two-band methods can be avoided.

The observed data has uncertainty, and the \binocs method is iterated 200 times to account for this. At the beginning of every fitting, each magnitude is varied randomly using a gaussian distribution where $\sigma =$ the magnitude's associated uncertainty. The fitting is run, and a best-fit model is recorded for each iteration. If the majority of fits of a star classify it as a non-member, then it is deemed a non-member overall. For member stars, best-fit primary and secondary masses are determined to be the median of all best-fit models.

By relying on, at minimum, 8 filters, individual observational uncertainties become much less important than in the two-band method. The degeneracies that plague that method are severely reduced, allowing accurate mass determinations over nearly the entire mass range available in the cluster. Additionally, because imaging data is relied upon instead of spectroscopy, limited telescope time is needed. Assuming access to the right instruments, all necessary data can be obtained in a few nights, making this approach highly efficient.\\

\S\ref{sec:data} will give an overview of the instruments used to collect the data necessary for the \binocs routine, the sample of clusters to be used in answering the science questions, and what data is available for each cluster. \S\ref{sec:isochrones} will explore the stellar structure models used to create the comparison SEDs, as the mass results from the \binocs code are only as accurate as the underlying models themselves. \S\ref{sec:testing} will test some of the assumptions made in the description of the \binocs code above (number of ``close'' filters, number of iterations), as well as compare the results of the SED fitting to that of previously-published RV studies. \S\ref{sec:Radial} and \S\ref{sec:Primordial} will use the \binocs results to answer the science questions posed in \S\ref{sec:questions}.

