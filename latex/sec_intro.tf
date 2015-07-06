\chapter{Introduction} \label{sec:intro}

\section{Basic Astrophysics} \label{sec:introAstrophysics}

\subsection{The Magnitude System} \label{sec:introMagnitudeSystem}
Ancient astronomers found it beneficial to classify the stars they observed in the night sky. The Greek astronomer Hipparchus grouped all observable stars into 6 \emph{magnitude} groups: magnitude 1 stars were the brightest, while magnitude 6 stars were the dimmest observable with the naked eye. With the advent of sensitive observing equipment, it was discovered that magnitude 1 stars were 100 times brighter than magnitude 6 stars. From this historical groundwork, the magnitude system was defined: a difference of 5 magnitudes corresponds to a factor of 100 in brightness. With modern telescopes and sensitive observing equipment, astronomers can observe stars that are much dimmer than 6th magnitude, opening up the magnitude scale to high positive magnitudes. The Hubble Space Telescope has a limiting magnitude of roughly 30; stars that are one billionth as bright as what can be seen with the naked eye.

A magnitude increase of 1 corresponds to a brightness difference of $\sqrt[5]{100}$; the magnitude difference between stars will be a logarithm of the ratio of fluxes with a base of $\sqrt[5]{100}$. To determine the difference in magnitudes of two different stars (A and B):
\begin{equation}
m_A - m_B = -\log_{\sqrt[5]{100}}\left( \frac{F_A}{F_B} \right)
\end{equation}
Converting to more familiar $\log_{10}$,
\begin{equation}
m_A - m_B = -\log_{\sqrt[5]{100}}\left( \frac{F_A}{F_B} \right) = -\frac{\log_{10} F_A / F_B}{\log_{10} \sqrt[5]{100}} = -2.5 \log_{10} \left( \frac{F_A}{F_B} \right)
\label{eq:MagSystem}
\end{equation}

Equation \eqref{eq:MagSystem} defines magnitudes relative to one another, and a zero point is required to complete the scale. There are three different conventions for handling the magnitude scale zero point:\\

\noindent \textbf{Vega System:} Historically, the star Vega was chosen to have a magnitude of 0, with all other stars measured relative to it. Due to uncertainties in flux measurements, however, Vega's magnitude has been refined over time. While the defined zero point of the magnitude scale has stayed the same, Vega now has a magnitude of 0.03. The magnitude of a general star in the Vega magnitude system is calculated by:
\begin{equation}
m_{\text{VS}} = -2.5 \log_{10} \left( \frac{F}{F_{\text{Vega}}} \right) + 0.03
\label{eq:VegaSys}
\end{equation}

\noindent \textbf{AB System:} The zero point of the magnitude scale in the AB system is a flat spectrum. A star in the AB system will have a magnitude:
\begin{equation}
m_{\text{AB}} = -2.5 \log_{10} (F_\nu) - 48.6
\label{eq:ABSys}
\end{equation}

\noindent \textbf{STMag System:} The STmag system, used on space telescopes such as Hubble, is analogous to the AB system, but with flux defined as a function of wavelength instead of frequency. As such, the zero point is different:
\begin{equation}
m_{\text{ST}} = -2.5 \log_{10} (F_\lambda) - 21.1
\end{equation}

One issue with the magnitude system, as defined by ancient astronomers, is that star brightness is not intrinsic, but correlated with distance from Earth. Light intensity of a star falls off with an inverse square law. In order to compare stars that may be at different distances, the observed magnitudes, called \emph{apparent magnitudes}, are converted to \emph{absolute magnitudes}. The absolute magnitude of the star is its apparent magnitude if it was located at a distance of 10 parsecs\footnote{A parsec is a geometric astronomical distance unit. It is defined as the distance at which 1 AU (the average distance between the Earth and the Sun) subtends an angle of one arcsecond.} from Earth.

We compare the apparent magnitudes of a generic star at a distance $d$ (in parsecs) and at a distance of 10 parsecs (denoted by a capital $M$). Using the fact that flux is $L / 4\pi r^2$ (inverse square law), the difference in apparent and absolute magnitude is:
\begin{equation}
m - M = -2.5 \left( \log_{10} \frac{L}{4\pi d^2} - \log_{10} \frac{L}{4\pi (10)^2} \right) 
\end{equation}
The distance dependence is pulled out of the logarithm, and a majority of the equation cancels.
\begin{equation}
m-M = -2.5 \left( \log_{10} \frac{L}{4\pi} - \log_{10} d^2 - \log_{10} \frac{L}{4\pi} + \log_{10} (10)^2 \right) = -2.5 \left(\log_{10} (10)^2 - \log_{10} d^2\right)
\end{equation}
Rearranging and getting rid of exponents gives the absolute magnitude conversion a simple form:
\begin{equation} \label{eq:MagnitudeDistanceRel}
m-M =  5 \log_{10} d \text{ (pc)} - 5
\end{equation}
Equation \eqref{eq:MagnitudeDistanceRel} is known as the \emph{magnitude-distance relation}. In apparent magnitude, the Sun dominates the scale with an apparent magnitude of -26.7. In absolute magnitude, however, the Sun is a fairly average 5th magnitude star. Getting distances, and therefore absolute magnitudes, allows for inter-comparison of stars anywhere in the Universe.

\subsection{Filter Systems} \label{sec:introFilterSystems}

Astronomers use photometric filters to allow only specific wavelengths of light into a detector. \emph{Broadband filters}, which allow relatively wide wavelength ranges ($50+$ nm) of light through, are created using two panes of glass that are fused together: \emph{cut-on} and \emph{cut-off} layers. The cut-on layer is opaque to short wavelength photons, up to a certain point where it ``cuts on'' and becomes transparent to longer wavelength photons. The cut-off layer acts oppositely: transparent to short wavelength photons and opaque to long wavelength photons. The combination of these two layers yields a filter where only a small range of wavelengths are able to pass through. By changing the two layers used, filters with the desired wavelength range can be created.

To allow easy comparison of results between telescopes, there are several standard filter systems to which all other measurements are calibrated. Of particular importance to this project are filter systems that cover the visual and infrared portions of the spectrum. 

\textbf{Optical Filters:} This project will utilize two sets of standard filters that cover the optical range of the electromagnetic spectrum, from 300 $-$ 1000 nm. The first filter systems is called the Johnson-Cousins system, consisting of five filters, $UBVRI$ \citep{1990PASP..102.1181B}. Alternatively, there is the Sloan filter system, $ugriz$ \citep{1996AJ....111.1748F}. Both visual filter systems provide near seamless coverage between 300 $-$ 900 nm, illustrated in figure \ref{fig:FilterFunctions}. The Sloan filters have much reduced throughput in figure \ref{fig:FilterFunctions} due to the fact that the Sloan system includes the filters themselves, the CCD detectors, and the Sloan telescope (described in \S\ref{sec:optData}). The inclusion of the entire optical and detector system vastly reduces the throughput as compared to the actual filter throughput measured for the Johnson-Cousins system. 

\textbf{Near-IR Filters:} The 1.0 $-$ 2.5 $\mu$m wavelength range is covered by three near-infrared filters that comprise the 2-Micron All Sky Survey \citep[2MASS;][]{2006AJ....131.1163S} filter system, $JHK_S$. Unlike the visual systems, 2MASS filters do not provide uniform coverage throughout this range. The gaps between the filters, at 1.4 and 1.9 $\mu$m, correspond to regions of absorption from water vapor and CO$_2$ in the atmosphere. These spectral regions would not provide any photons from the star, so the 2MASS filters were designed to avoid sky contamination.

\textbf{Mid-IR Filters:} Beyond 2.5 $\mu$m, absorption from the Earth's atmosphere becomes so strong that few stellar photons will reach the surface. To overcome this, mid-infrared observations are usually taken from space. The mid-IR standard filter system used in this project, [3.6][4.5][5.8][8.0], are from the Infrared Array Camera (IRAC) on the \emph{Spitzer} Space Telescope \citep{2004ApJS..154...10F}. Additional data were used from the Wide-Field Infrared Survey Explorer (WISE) \citep{2010AJ....140.1868W}, which is an all-sky mid-IR survey. WISE uses the mid-IR filters of [3.4] and [4.6], very similar to the shorter-wavelength filters for IRAC. In \S\ref{sec:mirData}, the WISE filter magnitudes will be transformed into IRAC magnitudes, creating a single mid-IR filter system.

Table \ref{tab:filtertable} lists the filters that will be used in this project along with the central wavelengths and approximate width of the transparent region.

\begin{table} \centering
\begin{tabular}{|c|c|c|c|}\hline
System & Filter & Central $\lambda$ (nm) & Width (nm) \\
\hline \hline
\multirow{5}{*}{Johnson-Cousins} & $U$ & 365 & 66 \\
& $B$ & 445 & 94 \\
& $V$ & 551 & 88 \\
& $R$ & 658 & 138 \\
& $I$ & 806 & 149 \\
\hline
\multirow{5}{*}{Sloan} & $u$ & 350 & 57 \\
& $g$ & 480 & 137 \\
& $r$ & 625 & 137 \\
& $i$ & 770 & 153 \\
& $z$ & 910 & 95 \\
\hline
\multirow{3}{*}{2MASS} & $J$ & 1235 & 162 \\
& $H$ & 1662 & 251 \\
& $K_S$ & 2159 & 262 \\
\hline
\multirow{4}{*}{IRAC} & [3.6] & 3567 & 776 \\
& [4.5] & 4485 & 1060 \\
& [5.8] & 5729 & 1427 \\
& [8.0] & 7893 & 2901 \\
\hline
\end{tabular}
\caption[List of standard filter centers and wavelengths]{Central wavelengths and effective widths of all filters used in this project. \label{tab:filtertable}}
\end{table}

\begin{figure}
\centering
\includegraphics[width=0.9\textwidth]{../plots/eps/filter_functions.eps}
\parbox{0.8\textwidth}{\caption[Filter functions]{Effective ranges of all filters used in this paper. \emph{(Top Left)} Johnson Filters: $UBVRI$. \emph{(Top Right)} SDSS Filters: $ugriz$ + CCD + Sloan Telescope. \emph{(Bottom)} 2MASS (which includes detector and telescope effects) and IRAC filters: $JHK_S$[3.6][4.5][5.8][8.0].\label{fig:FilterFunctions}}}
\vspace{-10pt}
\end{figure}

\subsection{Color-Magnitude Diagrams \& Stellar Evolution} \label{sec:introStellarEvolution}

Stars go through a variety of stages during their lifetime, and the easiest way to visualize stellar evolution is through the use of a \emph{Hertzsprung-Russell} (H-R) diagram. A H-R diagram plots stars with Luminosity on the y-axis, and Temperature on the x-axis. While a H-R diagram is the easiest way to visualize stars, neither Luminosity nor Temperature is an observed quantity. Instead, we create \emph{color-magnitude} diagrams (CMDs), which plot a filter magnitude on the y-axis and a \emph{color} on the x-axis. A color is calculated by subtracting the magnitude of a star in a higher wavelength filter from the star's magnitude in a lower wavelength filter, e.g. $B-V$ or $V-K$.

CMDs are much easier to create, due to the fact that no other information about the stars need to be known besides their observed magnitude. If other information is known, it is possible to convert a CMD into a H-R diagram. Equation \eqref{eq:MagnitudeDistanceRel}, along with stellar models, can be used to convert a filter magnitude to an absolute magnitude and then to a luminosity. A color is related to temperature due to the fact that bluer (hotter) stars will have a negative color, while a red star (cooler) will have a positive color. Using known relations, colors of stars can be transformed into temperatures, if needed.


While H-R diagrams can be plotted for any collection of stars, CMDs are usually created for star clusters (to be discussed later in section \ref{sec:introClusters}). A CMD of Hubble Space Telescope data for a cluster is plotted in figure \ref{fig:IntroCMD}. Stages of stellar evolution are labeled 1 through 5. The list below explains what changes the star is experiencing during each stage of evolution.

\begin{figure}
\centering
\includegraphics[width=0.8\textwidth]{../plots/jpg/NewCMD.png}
\parbox{0.8\textwidth}{\caption[Hubble Space Telescope color-magnitude diagram]{Hubble Space Telescope CMD for a globular cluster. Evolutionary stages are labeled.}}
\label{fig:IntroCMD}
\vspace{-10pt}
\end{figure}

\begin{enumerate}
\item \textbf{The Main Sequence (MS):} For a majority of a star's life, hydrogen to helium conversion in the core is the main source of energy. During this phase, the star is located on a region of the CMD called the \emph{main sequence}. Larger mass stars are brighter and hotter than lower mass ones, and are therefore located at the top of the MS. As the hydrogen fuel in its core begins to become depleted, a star cools slightly, moving right on the CMD. For the most part, however, MS stars are located in a well-defined sequence in the CMD.

\item \textbf{Turnoff + Subgiant branch:} When hydrogen in the star's core becomes depleted, it can no longer create enough energy to sustain the weight of the layers above it, and the core begins to collapse. These stars have completed their time on the main sequence, and can be seen on the CMD at the \emph{turnoff point}. As the core collapses and releases gravitational energy, a shell of hydrogen around the core begins to heat until hydrogen fusion begins in the shell. As the shell has more volume than the core below it, the increased energy output expands the outer layers of the star, cooling it and increasing its brightness as it moves through the \emph{subgiant branch}. During this phase and the next, the hydrogen-depleted core remains inert.

\item \textbf{Red Giant Branch (RGB):} As the shell continues to convert hydrogen to helium, the stellar atmosphere opacity increases due to the decrease in temperature and, thus, increase in H$^-$ ions. This opacity increase leads to convection becoming the most efficient energy transport method and convection cells forming near the surface. The increase in energy transport efficiency leads to an increase in luminosity as well as causing the outer layers of the star to expand again. This expansion causes the temperature to decrease even more, and the entire cycle repeats. As stars near the tip of the RGB, they become so large that their outer layers may be blown off by stellar winds. While all stars experience mass loss during their ascent of the RGB, the mass loss rates for some stars can be substantial, exceeding nearly 25\% of the total mass.

During the RGB phase, the inert core of the star continues to collapse and heat until the temperature is high enough to begin helium fusion. While some stars gradually enter the next phase of evolution, some stars begin helium fusion nearly simultaneously throughout the core in a \emph{helium flash}.

\item \textbf{Horizontal Branch (HB):} With core temperatures now high enough to convert helium into Carbon, the \emph{horizontal branch} evolutionary phase is the helium analogue of the hydrogen main sequence. The star remains almost stationary on the CMD as it converts all of the helium within the core. As there is much less helium within the star than hydrogen, the timescale of the horizontal branch is much less than that of other evolutionary phases.

There are two distinct halves of the horizontal branch, a red and blue section (visible in figure \ref{fig:IntroCMD}). The difference between these sections is not completely understood, but is thought to be related to the mass loss of the star along the RGB. If the outer layers of the star are lost near the tip of the RGB, we are observing further into the star than if there was no mass loss, leading to a higher observed temperature and bluer color.
	
\item \textbf{Asymptotic Giant Branch (AGB):} As the HB is an analogue of the MS, the asymptotic giant branch is the helium analogue of the RGB. Named because it approaches the RGB asymptotically from the left of the CMD, the AGB contains stars that are burning helium in a shell around the core and are at least partly convective.

\item \textbf{Post AGB Evolution:} While a star is on the AGB, it experiences a high rate of mass loss. Strong stellar winds continue after the star reaches the tip of the AGB, blowing off most of the star's outer cooler layers, leaving only the hotter inner regions. Since the star's helium shell continues burning, the luminosity stays the same. This results in the star tracking blueward at the top of the CMD. When only a small layer of material remains on top of the helium burning shell, the temperature drops rapidly and fusion stops. The star's luminosity drops rapidly, and the star ends its life as a white dwarf on the bottom left of the CMD.

The AGB to white dwarf transition only happens for medium to low mass stars, less than 8 M$_\odot$. Higher mass stars will end their lives in supernovae explosions, ending as either a neutron star or black hole. The transition to these stellar remnants is beyond the scope of this work.
\end{enumerate}

\subsection{Metallicity} \label{sec:introMetallicity}
A star's \emph{metallicity} is an important quantity when determining its properties. Astronomers consider anything besides hydrogen and helium to be ``metals''. Metallicity is the fraction of mass within a star that is metals, and is often denoted by the letter Z\footnote{Astronomers define the chemical makeup of stars using the parameters X, Y and Z. X = mass fraction of hydrogen, Y = mass fraction of helium, Z = mass fraction of metals.}. The Sun has a metallicity of Z $= 0.0188$, meaning that slightly less than 2\% of the mass of the Sun is comprised of something heavier than helium. While denoting a star's metallicity using Z is fairly common, it can also be expressed in terms of dex, which is the log of the ratio of the star's Z to the Sun's. Given a metallicity of $N$ dex, Z can be found using:
\begin{equation}
Z_{star} = Z_\odot \times 10^{N \text{ dex}}
\end{equation}

While the term metallicity is most often used to describe the overall metal content of the star, metallicity can also refer to the abundance of particular elements within the star. Usually the ratios of these elements are consistent, but sometimes anomalous stars will be observed with certain elements far more abundant than predicted. Individual elemental abundances are calculated as ratios of that element to hydrogen, and then calibrated to the Sun's value (similar to the dex definition). For iron, its abundance is written as [Fe/H] and calculated by:
\begin{equation}
\text{[Fe/H]} = \log \frac{(N_{Fe} / N_H)_{Star}}{(N_{Fe}/N_H)_\odot}
\end{equation}

Metallicity measurements will not be the focus of this project, but are essential in computing accurate comparison stellar models. Metallicity information used in the analysis will be gathered from outside sources.

\subsection{Interstellar Reddening} \label{sec:introReddening}
Interstellar space contains gas and dust that scatters and absorbs stellar photons. The scattering of light by interstellar gas causes two related effects: \emph{extinction} due to the fact that photons being absorbed or scattered by gas means that the star will appear dimmer than it actually is, and \emph{reddening} due to the fact that shorter (bluer) wavelengths are scattered more than longer wavelengths, altering the color of the star so that is measured to be redder than it actually is.

Extinction is denoted using the term $A_X$, where $X$ is the specific band you are interested in, and is calculated using:
\begin{equation}
A_X = (M_X)_{\text{intrinsic}} - (M_X)_{\text{observed}}
\end{equation}

Extinction adds another term to equation \eqref{eq:MagnitudeDistanceRel}, converting the magnitude-distance relation to:
\begin{equation}
m_X - M_X = 5 \log_{10} d - 5 + A_X
\end{equation}

Reddening for a given color, say $B-V$, is denoted by the value $E(B-V)$:
\begin{equation}
E(B-V) = (B-V)_{\text{intrinsic}} - (B-V)_{\text{observed}} = A_B - A_V
\label{eq:ebvabav}
\end{equation}

Extinction and reddening are intertwined effects, as seen in equation \eqref{eq:ebvabav}, and have been related experimentally. This is done by comparing spectra of two stars of the same spectral type: one which is not reddened, and the other which is observed through dust. The stars are assumed to have similar physical properties, but the flux from the reddened star will be less than that from the non-reddened one.

It was found that galactic extinction curves (extinction vs wavelength) could be approximated by an analytic function with a single variable: $R_V = A_V / E(B-V)$, the total-to-selective extinction ratio \citep{1989ApJ...345..245C}. For the nearby regions of the Milky Way being explored, an assumption of the galactic average, $R_V = 3.1$, is acceptable. Extinction values for visual and near-IR filters used in this project are listed in table \ref{tab:RX}.

\begin{table} \centering
\begin{tabular}{|c|c|c|}\hline
Filter & $A_X/A_V$ & Source \\ \hline
$U$ & 1.531 & \multirow{5}{*}{\citet{Binney:ul}} \\
$B$ & 1.324 &  \\
$V$ & 1.000 &  \\
$R$ & 0.748 &  \\
$I$ & 0.482 &  \\ \hline
$u$ & 1.593 & \multirow{5}{*}{\citet{1999AJ....117.2528F}} \\
$g$ & 1.199 &  \\
$r$ & 0.858 &  \\
$i$ & 0.639 &  \\
$z$ & 0.459 &  \\ \hline
$J$ & 0.282 & \multirow{3}{*}{\citet{Binney:ul}} \\
$H$ & 0.175 &  \\
$K_S$ & 0.112 &  \\ \hline
$[3.6]$ & 0.063 & \multirow{4}{*}{\citet{2009ApJ...690..496C}} \\
$[4.5]$ & 0.048 & \\
$[5.8]$ & 0.048 & \\
$[8.0]$ & 0.048 & \\ \hline
\end{tabular}
\caption[Extinction values]{Extinction Relations in Relevant Filters \label{tab:RX}}
\end{table}

\subsection{Star Clusters} \label{sec:introClusters}
A star cluster is a gravitationally-bound collection of stars that formed from the same large cloud of interstellar gas at roughly the same time, and are fundamentally important in astrophysics, due to the fact that they are some of the only reliably age-dateable objects in the known Universe.

Of all the parameters that determine the observable properties of a star, age is the hardest to determine. Metallicity can be measured through spectroscopy, distance can be found using parallax (for close stars), but determining the age of a single star is near-impossible. The Sun --- the star we know the most about --- is dated through radioactive dating analyses of meteorites instead of through direct measurements.

Most stellar clusters are assumed to have a common age and homogeneous chemical composition. A cluster's distance from Earth is usually much larger than the size of the cluster, and therefore it can be approximated that all stars are at the same distance. It is also assumed that all stars within a cluster have their light pass through the same line of sight to Earth. Any gas clouds that redden the light from one star in the cluster will have the same effect on all stars in the cluster. There are clusters that experience \emph{differential reddening}, where reddening throughout the cluster is not constant, but for the most part this assumption holds.

While field stars will have varying values of metallicity, age, distance and reddening, star clusters will have a single set of parameters for all stars. Using the cluster as a uniform ensemble, age determinations are possible, allowing for the correlation of many stellar properties with time.

Star clusters come in two forms: globular and open clusters.\\

\noindent \textbf{Globular clusters} are dense collections of 10,000 to a few million stars. Globular clusters are usually very old, around 13 Gyr (for reference, the Universe is 13.7 Gyr old), and have a large metallicity spread ($\sim$ 1.5 dex) between clusters. Globular clusters are distributed roughly symmetrically around the galactic center (or centers of other galaxies) and have highly eccentric orbits, usually at an angle from the galactic plane. The Milky Way has roughly 150 globular clusters \citep{1996AJ....112.1487H}, while the nearby Andromeda Galaxy may have as many as 500 \citep{2001AJ....122.2458B}. 

Using globular clusters for evolutionary studies is problematic due to their very similar and advanced ages. Studies have also shown that the assumption of homogeneous populations to be false, with some of the most massive globular clusters showing multiple stellar populations \citep{2007ApJ...661L..53P}. It is possible that the explosions of first generation massive stars in the cluster caused another round of star formation. This second generation of stars will not only be younger than the first generation, but the ``pollution'' of the interstellar medium by supernovae remnants will cause the metallicity to change as well. These \emph{multiple starburst} clusters are harder to study, as it cannot be assumed that the cluster can be modelled using a single age and metallicity.\\

\noindent \textbf{Open clusters} are loose collections of a few hundred to a few thousand stars all formed from the same interstellar gas cloud within the Galactic disk. In distinction to globulars, open clusters are found within the disk of the Galaxy and are usually significantly younger and more metal-rich. Open clusters are extremely important for galaxy evolution; a vast majority of stars (70-90\%) are formed in open clusters \citep{2003ARA&A..41...57L}.

Star clusters are not infinitely-lived; they slowly ``evaporate'' and disappear over a few Gyr on average. When a cluster is far from all other large gravitational sources, the tidal radius of the cluster --- within which stars are gravitationally bound --- stays fairly constant, $r_{t0}$. When the cluster passes by a large mass, such as a spiral arm or giant molecular cloud, the tidal radius shrinks to $r_t$ as the outside mass pulls on the outer members of the cluster. Cluster stars that are now outside of $r_t$ move away from the cluster under the influence of the foreign mass. After the cluster passes the outside mass, the tidal radius expands back to its original size, but some of the cluster stars have migrated such that they are now outside of $r_{t0}$ and are therefore no longer bound to the cluster. These escaped stars then become integrated into the galactic field population. 

Both globular and open clusters experience these effects, but globulars have much longer lifetimes than open clusters. Large clumps of mass are common within galactic disks, where most open clusters are located, and multiple of these ``collisions'' will remove many of the cluster members over a few Gyr. Understanding the evolutionary dynamics of open clusters, including their destruction, will inform how galactic stellar populations evolve.


\subsection{Binary Star Systems}\label{sec:introBinary}\nocite{Carroll:UvmD7hOR}
Binary star systems, or sometimes \emph{binary stars}, are a system of two stars orbiting a common center of mass. The more massive star in the system is called the \emph{primary} star while the smaller is called the \emph{secondary}, or companion, star. Binaries are very important within a cluster environment due to the energy locked within their orbit, and will be described further in \S\ref{sec:Radial}.

There are several classifications of binary systems, based on how a system is observed. An overview of each class is included below, along with an explanation of any relevant information that can be gained.

\subsubsection{Visual Binaries}\label{sec:VisBinary}

If a binary is close enough to Earth, and the separation between stars in the system is great enough, both stars in the system can be individually resolved by a telescope. The star Castor in the constellation Gemini is an example of this type of system, called a \emph{visual binary}.

Observing the system through an appreciable portion of its period allows for a complete determination of each stars' orbital path. In addition to all of the orbital information on the system, the masses of each star can be determined for visual binaries. Getting magnitudes and colors from each star also allows determination of the temperature and spectral type of each member. 

Visual binaries are extremely important to much of astronomical understanding due to the large number of system parameters that can be determined observationally.

\subsubsection{Eclipsing Binaries}\label{sec:EclBinary}

Similar to lunar and solar eclipses that are witnessed on Earth, a binary system can have eclipses when one of the stars passes in front of the other as seen from Earth. A diagram of an eclipsing binary system, along with a plot of observed brightness over time is shown in figure \ref{fig:eclBinExample}. For this example, the smaller star is assumed to be hotter: a main sequence star with a red giant companion.

\begin{figure} \centering
\includegraphics[width=0.8\textwidth]{../plots/jpg/EclipsingCnO.png}
\parbox{0.8\textwidth}{\caption[Illustration of eclipsing binary system]{Light curve of an eclipsing binary system. Times denoted on the light curve correspond to the star positions on the left. Figure reproduced from \citet{Carroll:UvmD7hOR}\label{fig:eclBinExample}}}
\end{figure}

The first quantity that can be easily measured from an eclipsing binary is the ratio of temperatures of each star. At each point in the orbit, the flux from the system is measured (right panel of figure \ref{fig:eclBinExample}). When both stars are visible, the flux from the system is
\begin{equation}
B_0 = k \left( \pi r_L^2 F_L + \pi r_S^2 F_S \right)
\end{equation}

Here, L corresponds to the larger star, and S to the smaller star. The parameter k is a multiplicative factor that accounts for the distance to the system as well as the filters and optics that are used for the measurement. When the smaller star is between positions b and c in figure \ref{fig:eclBinExample}, only the large star is visible, making the measured flux:
\begin{equation}
B_{bc} = k \left( \pi r_L^2 F_L \right)
\end{equation}

The final configuration of the eclipsing system happens when the smaller star is between positions f and g. Then the total flux is:
\begin{equation}
B_{fg} = k \left[ \left( \pi r_L^2 - \pi r_S^2 \right) F_L + \pi r_S^2 F_S \right]
\end{equation}

Combining these equations and utilizing the Stefan-Boltzmann equation $F = \sigma T^4$, we find:
\begin{equation}
\frac{B_0 - B_{bc}}{B_0 - B_{fg}} = \frac{F_S}{F_L} = \left( \frac{T_S}{T_L} \right)^4
\end{equation}

If the velocities of the stars in the system are known (which is possible using techniques described in \S\ref{sec:specBinary}), it is also possible to deduce the radii of the individual component stars in the system. Below, it is assumed that stars have a constant speed over the regions we are interested in, but these equations can be modified if there are appreciable changes in velocity as well. The radius of the each star is computed, where $v$ is the relative velocity of the two stars:
\begin{equation}
r_S = \frac{v}{2} \left( t_b - t_a \right)
\end{equation}
\begin{equation}
r_L = \frac{v}{2} \left( t_c - t_a \right)
\end{equation}

Being able to determine temperatures and radii of stars allow for an easy determination of each stars' spectral type and evolutionary stage, which is helpful in understanding the internal mechanics of the binary system.

While the above two types of binary systems are important due to the wealth of information that can be gained, they are also quite rare. The linear resolution of a telescope falls off with distance, so any visual binaries detected must be fairly close to Earth. Binaries can also be formed in almost any orientation; their plane of orbit may be at any angle with respect to our line of sight, called \emph{inclination}. Only for binaries with an inclination of almost 90$^\circ$ will Earth observers see eclipses, therefore eclipsing binaries are extremely rare. To study binaries in a wide range of environments, more than visual and eclipsing binary systems will be needed.

\subsubsection{Spectroscopic Binaries}\label{sec:specBinary}

If a star is moving along the line of sight from Earth, its light is shifted due to the Doppler effect. Observed spectral lines will be blue- or red-shifted depending on the star's velocity. By comparing the observed spectral lines from a star to known wavelengths, the speed of the star can be determined, which is called a \emph{radial velocity} (RV). Single stars will have roughly a constant radial velocity throughout a short period of time (hundreds of days), while many binary systems will show systematic shifts in RV as the stars orbit each other.

If both stars in the binary system are of comparable luminosity, spectral lines from both stars may be observed. These \emph{double-lined binaries} allow for an estimation of the masses of both stars in the system as well as an understanding of the orbits of each star.

Using the velocity of each star, as well as the orbital period, the semi-major axis of the system can be calculated.
\begin{equation}
a = a_1 + a_2 = \frac{P}{2\pi v_1} + \frac{P}{2\pi v_2}
\end{equation}
Plugging this into Kepler's 3rd law and solving for the mass of the individual stars gives,
\begin{equation}
m_1 + m_2 = \frac{P}{2\pi G} (v_1 + v_2)^3
\label{eq:specBinaryMasses}
\end{equation}

\begin{figure}
\begin{center}
\includegraphics[width=0.9\textwidth, trim= 10mm 130mm 10mm 0mm, clip]{../plots/eps/inclination.eps} \\
\parbox{0.95\textwidth}{\caption[Inclination effect on observed radial velocities]{Difference between true velocity $v$ and observed radial velocity $v_r$ for various values of orbital inclination.\label{fig:rv}}}
\end{center}
\end{figure}

Radial velocities from spectroscopic binaries are complicated due to the inclination angle, $i$, of the system. If the orbit of the system is angled with respect to the line of sight from Earth, the radial velocity measured will be less than the orbital velocity of the system by a factor of $\sin i$, where $i$ is the inclination of the system (illustrated in figure \ref{fig:rv}). Adding this to equation \eqref{eq:specBinaryMasses},
\begin{equation}
m_1 + m_2 = \frac{P}{2\pi G} \frac{(v_{1r} + v_{2r})^3}{\sin^3 i}
\label{eq:preMassFunction}
\end{equation}
Here $v_{1r}$ and $v_{2r}$ are the actual radial velocities measured by astronomers. This equation gives lower bounds on the possible masses of the stars in the system, but cannot exactly determine them due to the uncertain inclination.

Regardless of the inclination, the center of mass of the binary system remains at a constant velocity, so the ratio of masses in the system is easily determined:
\begin{equation}
m_1 v_1 = m_2 v_2
\end{equation}
\begin{equation}
\frac{m_1}{m_2} = \frac{v_2}{v_1} = \frac{v_{2r}\sin i}{v_{1r}\sin i} = \frac{v_{2r}}{v_{1r}}
\label{eq:massratio}
\end{equation}

This relation works on both the ``true'' orbital velocities of the stars, as well as the observed velocities, $v_{1r}$ and $v_{2r}$.

Often, the secondary star is too dim to be observed in the spectra, but some information can still be gained from these \emph{single-lined binaries}. Plugging \eqref{eq:massratio} into \eqref{eq:preMassFunction} yields,
\begin{equation}
\frac{m_2^3}{(m_1 + m_2)^2} \sin^3 i = \frac{P}{2\pi G} v_{1r}^3
\label{eq:massFunction}
\end{equation}
The right hand side of equation \eqref{eq:massFunction} is called the \emph{mass function}, and only depends on observable quantities: the period and primary star radial velocity. Although the individual masses of the stars cannot be determined with only one star's velocity information, it does give a lower bound for $m_2$ since the left hand side of equation \eqref{eq:massFunction} is always less than $m_2$. 

Due to the fact that no detailed masses can be determined from single-lined binaries, they are only useful for statistical studies and not for determining the detailed mechanics of the system itself.

The above classifications are not mutually exclusive: A spectroscopic binary may have an inclination of 90$^\circ$ and therefore also experience eclipses. Such a system is called an \emph{eclipsing spectroscopic binary}. These systems are powerful tools, as the inclination is removed from \eqref{eq:preMassFunction} and \eqref{eq:massFunction}. Double-lined eclipsing spectroscopic binaries allow for the determination of the masses of both stars as well as the period and eccentricity of each star's orbit.






