<?phpnamespace App;use Illuminate\Database\Eloquent\Model;class BuyingOrder extends Model{    protected $fillable = [                            'ref', 'session', 'style', 'supplier_id',                            'po_recieved_date', 'pi_date', 'handover_date',                            'Gauge', 'yarn_ref_details', 'contract_weight', 'qty', 'hang_tag',                            'sizing', 'price', 'confirmed_price', 'inspection_date', 'handedover_date',                            'handedover_qty','mode','destination','shipping_hbl_awb','shipping_vsl_flight','shipping_etd','shipping_eta',                            'shipping_master_lc','shipping_invoice','shipping_invoice_value','payment','doc_date','doc_sent_courier_no','doc_status',                            'payment_date', 'actual_production_weight', 'approved_weight', 'knitting', 'linking', 'finishing', 'packing',                            'progress', 'customer', 'po_recieved_date', 'accessories', 'overseas_accessories', 'accys_status', 'care_label_composition',                            'shipping_sample_required', 'shipping_sample_sent', 'shipping_sent_courier_no', 'ca_rn', 'yarn', 'ply', 'trims',                            'knitting_pattern', 'po', 'remarks', 'fit_sample_sent', 'courier_no', 'fit_sample_comments', 'production_status', 'cbm', 'shipping_sent_date',                            'sample_req', 'sample_status', 'sample_date', 'delivery_tracking_number',    ];}