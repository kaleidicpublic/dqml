module dqml.dothersideinterface;

extern(C)
{
    // QCoreApplication
    void dos_qcoreapplication_application_dir_path(ref char*);
    void dos_qcoreapplication_add_library_path(const char*);

    // QApplication
    void dos_qapplication_create();
    void dos_qapplication_exec();
    void dos_qapplication_delete();
    void dos_qapplication_quit();

    // QGuiApplication
    void dos_qguiapplication_create();
    void dos_qguiapplication_exec();
    void dos_qguiapplication_delete();
    void dos_qguiapplication_quit();

    // QQmlApplicationEngine
    void dos_qqmlapplicationengine_create(ref void*);
    void dos_qqmlapplicationengine_load(void*, immutable (char)* filename);
    void dos_qqmlapplicationengine_load_url(void*, void*);
    void dos_qqmlapplicationengine_add_import_path(void* vptr, immutable (char)* path);
    void dos_qqmlapplicationengine_context(void*, ref void*);
    void dos_qqmlapplicationengine_rootObjects(void* vptr, ref void** array, ref int array_length);
    void dos_qqmlapplicationengine_delete(void*);

    // QQuickView
    void dos_qquickview_create(ref void*);
    void dos_qquickview_show(void*);
    void dos_qquickview_source(void*, ref char *);
    void dos_qquickview_set_source(void*, immutable (char)* filename);
    void dos_qquickview_set_source_url(void*, void*);
    void dos_qquickview_set_resize_mode(void*, int);
    void dos_qquickview_rootContext(void*, ref void*);
    void dos_qquickview_delete(void*);

    // CharArray
    void dos_chararray_delete(char*);

    // QObjectPtrArray
    void dos_qobjectptr_array_delete(void** ptr);

    // QQmlContext
    void dos_qqmlcontext_baseUrl(void*, ref char*);
    void dos_qqmlcontext_setcontextproperty(void*, immutable (char)*, void*);

    // QVariant
    void dos_qvariant_create(ref void*);
    void dos_qvariant_create_int(ref void*, int);
    void dos_qvariant_create_bool(ref void*, bool);
    void dos_qvariant_create_string(ref void*, immutable(char)*);
    void dos_qvariant_create_qobject(ref void*, void*);
    void dos_qvariant_create_float(ref void*, float);
    void dos_qvariant_create_double(ref void*, double);
    void dos_qvariant_toInt(void*, ref int);
    void dos_qvariant_setInt(void*, int);
    void dos_qvariant_toBool(void*, ref bool);
    void dos_qvariant_setBool(void*, bool);
    void dos_qvariant_toString(void*, ref char*);
    void dos_qvariant_setString(void*, immutable(char)*);
    void dos_qvariant_toFloat(void*, ref float);
    void dos_qvariant_setFloat(void*, float);
    void dos_qvariant_toDouble(void*, ref double);
    void dos_qvariant_setDouble(void*, double);
    void dos_qvariant_isnull(void*, ref bool);
    void dos_qvariant_delete(void*);
    void dos_qvariant_assign(void*, void*);
    void dos_qvariant_toQObject(void* , ref void*);
    void dos_qvariant_setQObject(void*, void*);

    // QObject
    void dos_qobject_create(ref void*,
                            void* dobject,
                            void function (void*, void*, int , void**));

    void dos_qobject_slot_create(void*,
                                 immutable (char)* name,
                                 int parametersCount,
                                 int* parametersMetaTypes,
                                 ref int slotIndex);

    void dos_qobject_signal_create(void*,
                                   immutable(char)* name,
                                   int parametersCount,
                                   int* parametersMetaTypes,
                                   ref int signalIndex);

    void dos_qobject_signal_emit(void*, immutable(char)* name,
                                 int parametersCount,
                                 void** parameters);

    void dos_qobject_signal_connect(void*,
                                    immutable(char)*,
                                    void*,
                                    immutable(char)*,
                                    int,
                                    ref bool);
    void dos_qobject_signal_disconnect(void*,
                                       immutable(char)*,
                                       void*,
                                       immutable(char)*,
                                       ref bool);

    void dos_qobject_property_create(void*,
                                     immutable(char)* name,
                                     int propertyMetaType,
                                     immutable(char)* readSlot,
                                     immutable(char)* writeSlot,
                                     immutable(char)* notifySignal);

    void dos_qobject_objectName(void*, ref char*);
    void dos_qobject_findChild(void*, immutable(char)*, int, ref void*);

    void dos_qobject_delete(void*);

    // QModelIndex
    void dos_qmodelindex_create(ref void* index);
    void dos_qmodelindex_delete(void* index);
    void dos_qmodelindex_row(void*, ref int result);
    void dos_qmodelindex_column(void*, ref int result);
    void dos_qmodelindex_isValid(void* index, ref bool result);
    void dos_qmodelindex_data(void* index, int role, void* variant);
    void dos_qmodelindex_parent(void* index, void* parent);
    void dos_qmodelindex_child(void* index, int r, int c, void* child);
    void dos_qmodelindex_sibling(void* index, int r, int c, void* sibling);

    // QHashIntByteArray
    void dos_qhash_int_qbytearray_create(ref void*);
    void dos_qhash_int_qbytearray_delete(void*);
    void dos_qhash_int_qbytearray_insert(void*, int, immutable(char)*);
    void dos_qhash_int_qbytearray_value(void*, int, ref char*);

    // QAbstractListModel
    void dos_qabstractlistmodel_create(ref void*,
                                       void*,
                                       void function (void*, void*, int, void**),
                                       void function (void*, void*, ref int),
                                       void function (void*, void*, ref int),
                                       void function (void*, void*, int, void*),
                                       void function (void*, void*, void*, int, ref bool),
                                       void function (void*, void*),
                                       void function (void*, void*, ref int),
                                       void function (void*, int, int, int, void*));
    void dos_qabstractlistmodel_beginInsertRows(void* vptr, void* parent, int first, int last);
    void dos_qabstractlistmodel_endInsertRows(void* vptr);
    void dos_qabstractlistmodel_beginRemoveRows(void* vptr, void* parent, int first, int last);
    void dos_qabstractlistmodel_endRemoveRows(void* vptr);
    void dos_qabstractlistmodel_beginResetModel(void* vptr);
    void dos_qabstractlistmodel_endResetModel(void* vptr);
    void dos_qabstractlistmodel_dataChanged(void* vptr, void* topLeft, void* bottomRight, int* rolesPtr, int rolesLength);
    void dos_qabstractlistmodel_delete(void*);

    // QResource
    void dos_qresource_register(immutable(char)* filename);

    // QUrl
    void dos_qurl_create(ref void*, immutable(char)*, int);
    void dos_qurl_delete(void*);
    void dos_qurl_to_string(void* vptr, ref char* result);
}
