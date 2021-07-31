<?php
use Illuminate\Support\Facades\Route;
//use DB;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('/ferme', function () {
    return view('shared.ferme');
});

Route::get('/OutilsCampagne', function () {
    return view('layout.partials.navcampagnes');
});
Route::get('/achats', function () {
    return view('shared.achats');
});
Route::get('/essai', function () {
    return view('poussins.essai');
});

Route::get('/blogpost', function () {
    return view('employes.createposts');
});

Route::get('/autocomplete', function () {
    return view('employes.index2');
});

Route::get('/StatCampagne', function () {
    return view('stats.index');
});


Route::get('/capital
    ', function () {
    return view('campagnes.comptable');
});
//compte
Route::get('modifpasswd','PasswordController@getFormModifierPassword')->name('modifpasswd');
Route::post('updatepasswd','PasswordController@modifier_password')->name('updatepasswd');
Route::post('passwdoublie','PasswordController@motdePasseOublie')->name('passwdoublie');



//sendmail
Route::get('sendbasicemail','MailController@basic_email');
Route::get('sendhtmlemail','MailController@html_email');
Route::get('sendattachmentemail','MailController@attachment_email');

//accessoires
Route::get("get_all_accesoires","AccessoireController@allAccessoires")->name('get_all_accesoires');
Route::post("show_all_accesoires","AccessoireController@showallaccesoires")->name('show_all_accesoires');

Route::get("get_all_transports","TransportController@allTransports")->name('get_all_transports');
Route::post("show_all_frais","TransportController@showallTransports")->name('show_all_frais');

Route::get("addmoreaccessoire","AccessoireController@addMore")->name('addmoreaccessoires');
Route::post("addmoreaccessoire","AccessoireController@addMorePost")->name('addmorePostaccess');
Route::get('/listingaccessoireonecampagne', function () {
    return view('shared.accessoiresonecampagne');
});
Route::get('caccessoires', 'AccessoireController@index')->name('caccessoires');

//aliments
Route::get("getallAliments","AlimentController@getAllAliments")->name('getallAliments');
Route::post("show_all_Aliments","AlimentController@showallAliments")->name('show_all_Aliments');

Route::get("addmore","AlimentAddMoreController@addMore")->name('addmorealiments');
Route::post("addmore","AlimentAddMoreController@addMorePost")->name('addmorePost');

Route::get('/listerallaliments', function () {
    return view('aliments.allalimentforthiscampagne');
});

Route::get('campaliments', 'AlimentController@index')->name('campaliments');

//Transports

Route::get('/listerallfrais', function () {
    return view('transports.allfraisforthiscampagne');
});
Route::get('transport', 'TransportController@index')->name('transport');
//Route::post('cloturecampagne', 'CampagneController@clotureCampagne')->name('cloturecampagne');

//Poussins
Route::get('head', 'PoussinController@index')->name('head');
/*
*campagne
*/

Route::get('/campagnes', 'CampagneController@index')->name('campagnes');
Route::get('/formCapital', 'ApportController@create')->name('formCapital');
Route::post('ajoutCapital', 'ApportController@store')->name('ajoutCapital');
Route::get('/cloturer', 'CampagneController@cloturerCampagne')->name('cloturer');
/*
*pertes
*/

Route::get("getallAll_losing","PerteController@getAll_losing")->name('getallAll_losing');
Route::post("show_all_losing","PerteController@showAll_losing")->name('show_all_losing');
 /*
 *Bilan
 */
Route::get('/bilan', 'BilanController@index')->name('bilan');
Route::get('/bilan_achats', 'BilanController@bilan_achats_campagne_en_cours')->name('bilan_achats');
Route::post('get_billan_achats_enCours','BilanController@getBilan_achats_campagne_en_cours')->name('get_billan_achats_enCours');
Route::get('get_billandetaille','BilanController@getBilan_detaille')->name('get_billandetaille');
Route::post('download_billandetaille','BilanController@downloadBilan_detaille')->name('download_billandetaille');

/**
 * Statistique
 */
Route::get('stat','StatistiqueController@statCampagne')->name('stat');



/*
*Vente
*/
Route::get('recap_vente', 'VenteController@getRecap')->name('recap_vente');
Route::post('recap_vente_show', 'VenteController@getRecapShow')->name('recap_vente_show');
Route::get('recap_vente_impaye', 'VenteController@ventes_impayes')->name('recap_vente_impaye');

/*
*Masse
*/

Route::get('/mean_masse', 'MasseController@index')->name('mean_masse');

/*
*Vaccin
*/

Route::get('vaccin', 'VaccinController@index')->name('vaccin');
Route::get('vaccinform', 'VaccinController@create')->name('vaccinform');
Route::post('vaccinformvalidation', 'VaccinController@store')->name('vaccinformvalidation');
Route::get('recap_vaccin', 'VaccinController@recapVaccin')->name('recap_vaccin');
Route::post('downloadrecap_vaccin', 'VaccinController@getRecap')->name('downloadrecap_vaccin');
Route::get('traitement_listing','VaccinController@traitement_pdf')->name('traitement_listing');

/**
 *PDF 
 */

 Route::get('pdf_form', 'GeneratePdfController@pdfForm')->name('pdf_form');
 Route::post('pdf_download', 'GeneratePdfController@pdfDownload')->name('pdf_download');
 Route::get('pdf_bilan/{array}','GeneratePdfController@pdfDownloadBilan')->name('pdf_bilan');
Route::get('pdf_vente/{data}', 'GeneratePdfController@downloadRecapVente')->name('pdf_vente');
Route::get('pdf_accessoires/{data}', 'GeneratePdfController@downloadRecapAccessoires')->name('pdf_accesoires');
Route::get('pdf_aliments/{data}', 'GeneratePdfController@downloadRecapAliments')->name('pdf_aliments');
Route::get('pdf_poussins/{data}', 'GeneratePdfController@downloadRecapPoussin')->name('pdf_poussins');
Route::get('pdf_pertes/{data}', 'GeneratePdfController@downloadRecapPerte')->name('pdf_pertes');
Route::get('pdf_transport/{data}', 'GeneratePdfController@downloadRecapFrais')->name('pdf_transport');
Route::post('pdf_bilanComplet/{data}', 'GeneratePdfController@downloadRecapDetailCampagne')->name('pdf_bilanComplet');
/**
 *Contact
 */
Route::get('quinsommes', 'ContactController@qui_ns_sommes')->name('quinsommes');
Route::get('contact', 'ContactController@contact')->name('contact');
Route::post('sendcontact', 'ContactController@sendmessage')->name('sendcontact');
/**
 * error bd insert
 */
Route::get('errorbd', 'ErrorController@index')->name('errorbd');

/**
 *MailChimp
 */
//Route::get('/send-mail-using-mailchimp', [MailChimpController::class, 'index'])->name('send.mail.using.mailchimp.index');


/**
 * TravauxConstruction
 */
Route::get('Tconstruction','TravauxConstructionController@index')->name('Tconstruction');

/**
 * Pathologies Aviaires
 */
Route::get('pathologiesAviaires','PathologiesController@getPathoAviaires')->name('pathologiesAviaires');
Route::get('MaladiesVirales','PathologiesController@getPathoVirales')->name('MaladiesVirales');
Route::get('MaladiesBacteriennes','PathologiesController@getPathoBacteriennes')->name('MaladiesBacteriennes');
Route::get('MaladiesparasitInternes','PathologiesController@getPathoParasitInternes')->name('MaladiesparasitInternes');
Route::get('MaladiesparasitExternes','PathologiesController@getPathoParasitExternes')->name('MaladiesparasitExterne');



 Route::get('/createcomplete','FonctionController@create');
Route::get('/listcampagne','FonctionController@getAutocompleteData');

Route::get('/employe','EmployeController@index');
//route Autocomplemention
Route::post('getEmployes','EmployeController@getEmployes')->name('getEmployes');

Route::get('perte', 'PerteController@index')->name('perte');
Route::get('vente', 'VenteController@index')->name('vente');
Route::resource('campagnes', 'CampagneController');
Route::resource('poussins', 'PoussinController');
Route::resource('accessoires', 'AccessoireController');
Route::resource('aliments', 'AlimentController');
Route::resource('transports', 'TransportController');
Route::resource('pertes', 'PerteController');
Route::resource('ventes', 'VenteController');
Route::resource('bilans', 'BilanController');
Route::resource('masses', 'MasseController');
Route::resource('employes', 'EmployeController');
Route::resource('apports', 'ApportController');
Route::resource('vaccins', 'VaccinController');
Route::resource('travaux', 'TravauxConstructionController');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
